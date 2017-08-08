customers = {
  "John": [:pork_chop, :waffle],
  "Mary": [:salad, :green_smoothie]
}

menu = {
  pork_chop: 1,
  waffle: 2,
  salad: 3,
  green_smoothie: 4
}

customers.each do |customer, items|
  total = items.reduce(0) { |sum, item| sum + menu[item] }
  puts "#{customer.to_s} bought #{items.join(', ')} at a total of #{total}"
end
