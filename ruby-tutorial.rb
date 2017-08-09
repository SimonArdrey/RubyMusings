# Work In Progress

# This is a Ruby file. In this file we can write Ruby code to make a program.
# Ruby will execute / run / interpret every line in this file and perform an action.
# The code will represent a list of logical ordered steps that the computer will action.



# Comments
# ========

# This line is a comment, comments are inert and are ignored by Ruby.
# Any line that starts with a # symbol is a comment.
# Comments allow us to write notes about our code.
# We can also use comments to disable a line of code.
# e.g.
# my_dogs_name = "lucky"
# Ruby skips the above line
puts "some ruby code" # A comment can also be at the end of a line of code.
# We can decorate our code with comments to help other people understand what our
# code does. Also to help us remember what it does.


# Data Types is the collective term or phrase used when describing types or formats of computer information.

# Strings (Data Type)
# =======
# A string is just text data.
# The visual representation of an individual letter or number is called a character.
# A is a character, x is a character, 7 is a character, & is a character, / is also a character.
# String is the term used to describe a sequence of characters.

# A string is any text inside quotation marks.
"Hello World, this is a string"
'This is also a string'
"The temperature today is 23 degrees!"
"my_email@yahoo.com"
# The above are all strings. Strings are just text data.

# These are also strings and not numbers. Because they are the visual text representation
# and not really a computer number. Number data is written differently (see later)
'23'
"40"
"345435"

# Numbers (Data Type)
# =======
# To specifiy real number data in code, you just write the number without quotes.
123 # This is a number
23.5 # and this
3487569378543856 # this also
# The computer interprets this code as digital computerised numbers.
# The computer can only perform math calculations with digital numbers.

# These two lines are not the same.
45 # Digitised computer number that computer understands
"45" # Text / picture representation that is only used for display purposes.

# If a number is a whole number with no decimal point, it is called an integer.
# If a number has a decimal point it is called a float.
# This is because inside the computer those two types of numbers are digitised and represented differently.
# Inside your computer is different microchip circuitry to work with each type of number.
# But you don't need to think about this at the moment.
12 # This is an integer.
12.5 # This is a float.


# Booleans (Data Type)
# ========
# A boolean is a special type of information used to represent one of two possible states.
# We call these two states True and False. You could also think of the two states as
# on or off, yes and no and 1 or 0. Booleans are extreamly useful and important because
# we can use them to represent a decision or fact that we can then act on later.
# This is how we write a boolean.
true
false
# Ruby will interpret those two lines to mean this special type of data / information.


# Variables
# =========
# When programming and wirting code we need the computer to remember lots of
# small bits of information. Information like, user input, settings, some text or lists of things.
# In code we use variables to store these bits of information so we can re-use and
# manipulate the information in order to create a meaningful program.

# Variables are named. They can have any name you choose, but you should choose a meaningful name.

this_is_a_variable = "it is set to this text (called a string)"
# Variables are like a label and a bucket for holding your information.
# Variables hold information. They can be set to things and even be changed again.
# You need a variable to temporarily save information so you use it again later.
# When you define a variable, you are designating a small peice of short term computer
# memory to hold your information. But this does not happen until you run / execute
# your Ruby code.

# Variable examples:
my_dogs_name = "lucky"
my_favourite_food = "chips"
my_shirt_colour = "red"

this_variable_is_set_to_a_number = 12345
number_of_dogs_i_have = 2
number_of_times_i_have_been_to_dreamworld = 3
temperature_today = 23.5

my_eyes_are_blue = false
my_cat_has_legs = true
game_of_thrones_is_crap = true
sponge_bob_is_cool = false

# The above code follows the format:
# <variable_name> = <value>

# We can give a variable any name we want. Usually we choose a name that is meaningful to us.
# The name actually means nothing to the computer.
i_can_give_my_variable_any_name_i_want = 398543074545630

# When we set a variable to a value we call that assignment.
# We assign a value to a variable.

# We can re-assign variables to a new value.
temperature_today = 23.3
temperature_today = 30.6 # We changed the value.
# When the code / program is run the old value will be overwritten and lost forever.

# Variables can store all kinds of computer information that we cn further manipulate.
# NOTE: The = sign is called the assignment operator.
# NOTE: Operators are the small symbols we use in our code.

# Expressions (with numbers)
# ===========

# The next 2 lines are expressions.
2 + 2
5 * 5 + 20
# Expressions are proccesed and calulated by Ruby when you run/execute the code.
# Expressions are sort of like maths formulars but usually involve more than numbers.
# There are many types of expressions. We will look at them later.

# NOTE: The * sign means multiplication X

# A variable can be set to the calculated result of an expression.
x = 2 * 3 + 1
# x will now be set to 7
# `2 * 3 + 1` is the expression part that gets calculated.

# If we don't save the result of the expression, we will lose the calculated result.
# We won't be able to use the result for anything meaningful.
# We save the result by assigning it to a variable.
# Remember when we set a variable to a value that is called assignment.

my_yearly_rent = 52 * 500
# my_yearly_rent will be assigned to 26000.

# We can reuse a variable in an expression.
# It's a bit like algebra e.g. x = a + b * 10

# We assign some variables to be used in our next expression example.
number_of_weeks = 52
cost_of_rent = 500

# This next line is also an expression it will be calculated to be 26000
number_of_weeks * cost_of_rent

# Ruby will will use the information that you assign each variable to.
# Just like calculating an algebra formula by replacing the letters with their real values or numbers.

# We can save that calculated result by assigning the expression to the variable.
# We are setting the variable to equal the expression result.
yearly_rent = number_of_weeks * cost_of_rent
# yearly_rent will be assigned to 26000
# But remember, all this assigning values to names only happends when you actually run your code with Ruby.

# When Ruby calculates a formular / expression, that is called evaluation.
# So the expression `number_of_weeks * cost_of_rent` will evaluate to 26000
# Expressions can have many parts / terms just like a maths formular.

# Another example
number_of_pies = 3
apples_per_pie = 5

number_of_apples_needed = number_of_pies * apples_per_pie
# The expression will evaluate to 15
# So number_of_apples_needed will be assigned to 15 after the expression is evaluated.

# The above code follows the format:
# <variable_name> = <expression>

# Expressions are evaluated from left to right just like in maths.


# Expressions (with strings)
# =============
"Hello there" + "Bob." + "It is cold today."
# The above is an expression with strings. When evaluated the result will be:
"Hello thereBob.It is cold today."
# When you use the plus symbol (operator) with strings, they are joined together, exactly.
# This is called concatenation. The strings were concatenated.

"Hello there, " + "Bob. " + "It is cold today."
# Above I have added some space in the strings so when they are concatenated (joined)
# they will look more readable. When evaluate, will look like:
"Hello there, Bob. It is cold today."

# We can use and mix variables in our string expression just like with numbers.
my_name = "Bob"
"Hello " + my_name + " how are you?"
# When the expression is evaluated the result will be:
"Hello Bob how are you?"

# But the result is lost immediately, so we should save it in a variable for later use.
greeting = "Hello " + my_name + " how are you?"
# Now when run, the new greeting variable will be assigned the result of the expression.
# greeting will equal "Hello Bob how are you?"

# Expressions: Interpolation
# ==========================
# There is another way to write simple expressions with strings. But not really with
# strings really inside strings.
my_name = "Bob"
"Hello #{my_name} how are you?"
# Notice the # { } symbols. That means everything inside will be an expression.
# The result of that line after evaluation will be the string:
"Hello Bob how are you?"

# Another example:
number_of_pies = 3 # assign veriables first
apples_per_pie = 5
"I need #{number_of_pies * apples_per_pie} apples from the shop."
# After evaluation the result will be the string:
"I need 15 apples from the shop."

# Another example:
"5 + 4 = #{5 + 4}"
# When this is evaluated the result will be the string:
"5 + 4 = 9"



# Methods 1: puts and gets
# ========================
# A method is a sub program, like a small program inside a bigger program.
# A method can also be thought of as a command or action.
# A method can be re-used or re-executed again and again.
# Methods / commands would not be very useful if they only

puts "Hello World" # There two line are the same. The parentheses ( ) are optional.
puts("Hello World") # Sometimes the parentheses are needed. You will understand why later.

# Objects 1: everything is an object
# ========================
