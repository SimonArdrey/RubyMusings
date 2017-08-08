def colorize(text, color = :default, bg_color = :default)
    colors = {
      :default => "38",
      :black => "30",
      :red => "31",
      :green => "32",
      :brown => "33",
      :blue => "34",
      :purple => "35",
      :cyan => "36",
      :gray => "37",
      :dark_gray => "1;30",
      :light_red => "1;31",
      :light_green => "1;32",
      :yellow => "1;33",
      :light_blue => "1;34",
      :light_purple => "1;35",
      :light_cyan => "1;36",
      :white => "1;37"
    }

    bg_colors = {
      :default => "0",
      :black => "40",
      :red => "41",
      :green => "42",
      :brown => "43",
      :blue => "44",
      :purple => "45",
      :cyan => "46",
      :gray => "47",
      :dark_gray => "100",
      :light_red => "101",
      :light_green => "102",
      :yellow => "103",
      :light_blue => "104",
      :light_purple => "105",
      :light_cyan => "106",
      :white => "107"
    }

    color_code = colors[color]
    bg_color_code = bg_colors[bg_color]
    return "\033[#{bg_color_code};#{color_code}m#{text}\033[0m"
end

def ask(question)
  print colorize("#{question}:", :cyan) + " "
  gets.chomp
end

def choice(question, choices)
  input = nil
  is_input_valid = false
  choices_list = choices.to_a

  puts colorize("#{question}:", :yellow)
  choices_list.each_with_index do |choice, index|
    puts colorize("(#{index + 1})", :green) + " #{choice[1]}"
  end

  begin
    input_index = ask("Enter choice [#{[*1..(choices_list.length)] * ','}]").to_i
    is_input_valid = input_index.between?(1, choices_list.length + 1)
    puts "Incorrect option!" if is_input_valid == false
  end until is_input_valid

  choices_list[input_index - 1][0]
end

def letter_choice(question, choices)
  input = nil
  is_input_valid = false
  choices_list = choices.to_a
  letters = [*'A'..[*"A".."Z"][choices_list.length - 1]]

  puts colorize("#{question}:", :yellow)
  choices_list.each_with_index do |choice, index|
    puts colorize("[#{letters[index]}]", :green) + " #{choice[1]}"
  end

  begin
    letter_choice = ask("Enter choice [#{letters * ','}]").upcase
    is_input_valid = letters.include? letter_choice
    puts "Incorrect option!" if is_input_valid == false
  end until is_input_valid

  choices_list[letters.index(letter_choice)][0]
end

def menu_loop(question, menu)
  begin
    selection = choice(question, menu)
    if selection.respond_to? :call
      selection.call
    end
  end until selection == :exit
end

questions = [
  {
    question: "An array is",
    choices: {
      a: "a linear list of value variables",
      b: "a list of key value pairs",
      c: "a string",
      d: "a loop"
    },
    answer: :a
  },
  {
    question: "The puts method will",
    choices: {
      a: "Receive user input from the terminal",
      b: "Convert a string to upper case",
      c: "Convert a string to an integer",
      d: "Output a string to the terminal"
    },
    answer: :d
  },
  {
    question: "A hash is",
    choices: {
      a: "a linear list of value variables",
      b: "a loop",
      c: "a list of key value pairs",
      d: "an integer"
    },
    answer: :c
  }
]

def do_test questions
  puts "\n\n"
  puts "[ Do your best ]".center 50, "="

  num_correct = questions.reduce(0) do |total, q|
    puts
    letter_choice(q[:question], q[:choices]) == q[:answer] ? total + 1  : total
  end

  puts "\n\n"
  puts "*** You got #{num_correct} out of #{questions.length} correct. ***"
end

def print_answers questions
  questions.each_with_index do |q, index|
    puts q[:question]
    puts "\t" + q[:choices][q[:answer]]
  end
end

puts "[ Test Your Ruby Knowledge ]".center 50, "="
menu_loop("What do you want to do?", {
  lambda { do_test questions } => "Do the test",
  lambda { print_answers questions } => "See the answers",
  exit: "Get outta here (exit)"
})
