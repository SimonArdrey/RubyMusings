# Create a new hash with default value of 0
character_counts = Hash.new(0)

# Read input stream
STDIN.read.each_char do |char|
   character_counts[char] += 1
end

# Calaculate total
total = character_counts.values.reduce(0) do |total, next_value|
  total + next_value
end

# Sort the hash into an ordered array.
sorted_stats = character_counts.sort_by {|k| k}

# Print a table of the results
puts "Char\tCount"
sorted_stats.each do |stat|
  graph_bar = "*" * (stat[1].to_f / total.to_f * 100).ceil
  puts "#{stat[0]}\t#{stat[1]}\t#{graph_bar}"
end
