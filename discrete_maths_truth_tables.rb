# Truth table exercies

def binary_and(bn1, bn2)
  bn2_array = bn2.chars.to_a
  result = bn1.chars.to_a.map.with_index do |bit, index|
    if bit == "1" and bn2_array[index] == "1"
      "1"
    else
      "0"
    end
  end

  result.join
end

puts binary_and("0101", "1100") # Should return 0100
