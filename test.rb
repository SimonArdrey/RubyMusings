# Challenge
expenses = [37.50, 4.90, 12.60, 18.20, 22.40, 9.95]
# Programmatically determine the following:
# 1. What is the sum total of all the numbers in the array.
# 2. What is the smallest value in the array.
# 3. What is the sum of the first and last item in the array.

# Challenge

# A list of school subjects.
classes = [
  :maths,
  :science,
  :english,
  :geography,
  :chemistry,
  :history,
  :sport,
  :physics,
  :english,
  :science,
  :computers,
  :wood_work,
  :english,
  :cooking
]

# Programmatically do the following:
# 1. Print every second item the the classes array.
# 2. Remove :maths from the begining of the array and print.
# 3. Remove :cooking from the end of the array and print.
# 4. Add :design to the beginning of the list. Not the end.
# 5. Calculate how many times :english is in the list and print the total.
# 6. Remove every :english from the list and print the list.
# 7. Use some kind of loop to add every second item to a new array.

# Challenge
old_products = ["Sunglasses", "Hat", "Tie", "Shoes", "Pants", "Shirt", "Wallet", "Tie",  "Belt", "Boots", "Shoes"]
new_products = ["Polo Shirt", "Belt", "Jacket", "Socks", "Razor", "Sunglasses", "Cargo Pants", "Shirt", "Socks"]

# 1. Print all items from the old_products array that do not exist in the new_products array.
# 2. Programmatically combine all items in the new_products array to the old_products array and print the list.
# 3. After combining the two arrays programmatically, count the number of duplicates and print the
#  item with its count. Use a hash to represent the items and the count.
# 4. Programmatically remove duplicated items from old_products array and print the list.


# Challenge
# This is a list of user accounts and their account enabled state.
users = [
  { :name => "John", :enabled => false },
  { :name => "Sara", :enabled => true },
  { :name => "Bob", :enabled => false },
  { :name => "Jess", :enabled => true, :role => :admin },
  { :name => "Mary", :enabled => true },
  { :name => "Lin", :enabled => false },
  { :name => "Noi", :enabled => true, :role => :admin },
  { :name => "Charlie", :enabled => false },
]

# Programmatically do the following:
# 1. Print the number of accounts that are enabled.
# 2. Print a list of disabled accounts.
# 3. Print the user accounts in order by name.
# 4. Print the user accounts that have the admin role.
# 5. Enable Lins account by updating the :enabled key.
# 6. Give Sara the :admin role. (Add :role key with value :admin)


students = [
  {
    :id => 155123,
    :name => "Bobs Uruncle",
    :classes => [:english, :maths, :science],
    :friends_with => [155789, 155789],
  },
  {
    :id => 155456,
    :name => "Ben Dover",
    :classes => [:geography, :maths, :chemistry],
    :friends_with => [155123, 155789],
  },
  {
    :id => 155789,
    :name => "Jade Smith",
    :classes => [:english, :maths, :chemistry],
    :friends_with => [155789, 155456],
  },
  {
    :id => 155789,
    :name => "Caroline Parker",
    :classes => [:maths, :science, :chemistry],
    :friends_with => [155456, 155123],
  },
]

# Challnge

task queue

# Challenge

rectangle_a = {
  :width => 30,
  :height => 80
}

rectangle_b = {
  :width => 20,
  :height => 50
}

# 1. Print the area of both rectangles. Hint Area = h * w
