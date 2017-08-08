# Our basic blueprint for a bank account
class BankAccount
  # Allow these instance variables to be accessable from outside the object
  attr_reader :balance, :name

  # `initialize` default start-up/boot-up method. Automatically called on instance creation.
  def initialize(opening_balance, name)
    @opening_balance = opening_balance # We want to know the initial opening balance
    @balance = opening_balance # and set the current balance to the opening balance
    @name = name # We want an account name so we can identify the account and to display the name on the screen.
    @transactions = [] # We want to keep a list of our transactions
  end

  private

  def add_transaction(amount, description)
    # Add the transaction to the list with a description
    @transactions.push description: description, amount: amount.round(2)
    @balance = (@balance + amount).round(2) # Lets keep track of the balance
  end

  public

  def credit(amount, description)
    add_transaction amount, description
  end

  def debit(amount, description)
    add_transaction -amount, description # We record debit as a negative number
  end

  def pay_interest(percent)
    # Percent should be a fractonal number e.g. 0.1, 0.5
    add_transaction @balance * percent, 'Interest earned'
  end

  # account should be an instance of BankAccount
  def transfer_to(account, amount)
    # `account.name` is accessing the name of the account we are transfering to
    debit amount, "Transfer to #{account.name}"
    account.credit amount, "Transfer from #{@name}"
  end

  def print_statement
    running_balance = @opening_balance

    puts ''
    puts '=' * 60
    puts "Opening Balance: #{@opening_balance} for account #{@name}"
    puts "Amount\t\tBalance\t\tDesc"
    puts '-' * 60
    @transactions.each do |txn|
      # Lets calculate the running total
      runningBalance = (running_balance + txn[:amount]).round(2)
      # Print a transaction line to the screen
      puts "#{txn[:amount]}\t\t#{running_balance}\t\t#{txn[:description]}"
    end
    puts "Balance: #{@balance}"
    puts '=' * 60
  end
end

class FeeDecorator < SimpleDelegator
  def initialize(account, fee, description)
    super(account)
    @account = account
    @description = description
    @fee = fee
  end

  private

  def charge_fee
    @account.debit -@fee, @description
  end
end

class CreditFeeDecorator < FeeDecorator
  def credit(amount, description)
    @account.credit amount, description # Call and pass data to the original methods of the BankAccount
    charge_fee # And also charge a fee, add another transaction
  end
end


class DebitFeeDecorator < FeeDecorator
  def debit(amount, description)
    @account.debit amount, description # Call and pass data to the original methods of the BankAccount
    charge_fee # And also charge a fee, add another transaction
  end
end

# Lets create an instance of BankAccount for our savings account
savings = DebitFeeDecorator.new(CreditFeeDecorator.new(BankAccount.new(10, "Combank Easy Saver"), 2, 'Credit Transaction Fee'), 1, 'Debit Transaction Fee')
savings.credit 20, 'Pocket money'
savings.debit 5, 'Lollies'
savings.pay_interest 0.1 # Means 0.1 = 10%

# Create instance of BankAccountWithFees for our working account
working = BankAccount.new(20, "ANZ Everyday Visa")
# Send money from savings account to working account
savings.transfer_to working, 30

# Print the results to the screen
savings.print_statement
working.print_statement
