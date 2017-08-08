def ask(question)
  print "#{question}: "
  gets.chomp
end

def get_shopping_list
  shoping_list = [];

  puts "Enter blank line when finished"
  begin
    puts "" # New line on screen for clarity
    new_item = ask "What item do you need?"

    if new_item != ""
      how_many = ask "How many do you need?"


      shoping_list.push({
        name: new_item.capitalize,
        amount: how_many
      })


    end
  end until new_item == ""

  shoping_list # return shopping list
end

def print_shopping_list(shopping_list)
  puts "" # New line on screen for clarity
  puts "=" * 30
  puts "Item\t\tAmount"
  puts "=" * 30
  shopping_list.each do |item|
    puts "#{item[:name]}\t\t#{item[:amount]}"
  end
  puts "=" * 30
end

print_shopping_list(get_shopping_list)
