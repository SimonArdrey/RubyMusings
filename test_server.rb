require 'socket'                # Get sockets from stdlib
require_relative 'terminal-ui'

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

class Test
  def initialize(term_ui, questions)
    @term = term_ui
    @questions = questions
  end

  def run
    @term.out.puts "Hello"

    @term.out.puts "[ Test Your Ruby Knowledge ]".center 50, "="
    @term.menu_loop("What do you want to do?", {
      lambda { do_test } => "Do the test",
      lambda { print_answers } => "See the answers",
      exit: "Get outta here (exit)"
    })
  end

  def do_test
    @term.out.puts "\n\n"
    @term.out.puts "[ Do your best ]".center 50, "="

    num_correct = @questions.reduce(0) do |total, q|
      @term.out.puts
      @term.letter_choice(q[:question], q[:choices]) == q[:answer] ? total + 1  : total
    end

    @term.out.puts "\n\n"
    @term.out.puts "*** You got #{num_correct} out of #{@questions.length} correct. ***"
  end

  def print_answers
    @questions.each_with_index do |q, index|
      @term.out.puts q[:question]
      @term.out.puts "\t" + q[:choices][q[:answer]]
    end
  end
end

# Test.new(TermUI.new(), questions).run
# exit
server = TCPServer.open(2000)   # Socket to listen on port 2000
loop {                          # Servers run forever
  Thread.start(server.accept) do |client|
    puts "Client connected"
    Test.new(TermUI.new(client, client), questions).run
    client.close                # Disconnect from the client
  end
}
