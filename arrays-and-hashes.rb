#!/usr/bin/env ruby

# people is an array with each array/list item being a hash
people = [
  { :name => 'Bob', :from => 'Sydney' }, # Each of these lines is a Hash
  { :name => 'Tim', :from => 'Brisbane' },
  { :name => 'Jess', :from => 'Gold Coast' },
  { :name => 'Hellen', :from => 'Adelaide' },
  { :name => 'Kim', :from => 'Melborne' },
  { :name => 'Abdul', :from => 'Perth' },
  { :name => 'Huan', :from => 'Darwin' }
]

# We will loop through each item in the people array
people.each do |person|
  # For every person lets print some text
  puts "I'm #{person[:name]}, I live in #{person[:from]}"
end

puts '' # Empty line

# shopping_list is also an array with each item being a hash
shopping_list = []
# push method adds a new item to the array
shopping_list.push product: 'Milk', quantity: 1 # This is an alternative/shorthand hash
shopping_list.push product: 'Chips', quantity: 2
shopping_list.push product: 'Apples', quantity: 3
shopping_list.push product: 'Carrots', quantity: 5

shopping_list.each do |item|
  # Lets list our shopping items on the screen
  puts "Buy #{item[:quantity]} #{item[:product]}"
end
