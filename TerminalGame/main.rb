require_relative 'input'
require_relative 'game'

ask 'What is your name?' do |name|
  puts "Hello #{name.chomp.capitalize}"
end

# world = World.new
# puts world.can_move_to? Position.new(5, 5)
