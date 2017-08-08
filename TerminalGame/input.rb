def ask(question)
  puts
  puts question + '>'
  yield $stdin.gets.chomp
end
