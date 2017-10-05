# require 'curses'
#
# Curses.init_screen
# Curses.curs_set(0)  # Invisible cursor
#
# begin
#   # Building a static window
#   win1 = Curses::Window.new(Curses.lines / 2 - 1, Curses.cols / 2 - 1, 0, 0)
#   win1.box("|", "-")
#   win1.setpos(1, 1)
#   win1.addstr("Hello")
#   win1.refresh
#
#   win1.getstr
#   # Clearing windows each in turn
#   # sleep 0.5
#   win1.clear
#   win1.refresh
#   win1.close
# rescue => ex
#   Curses.close_screen
# end


class Booking
  include Comparable

  def initialize
  end

  def <=>(other)
  end
end

class Bookings
  include Enumerable

  def initialize(*bookings)
    @bookings = bookings
  end

  def <<(booking)
    @bookings << booking
  end

  def [](y)
    @bookings[y]
  end

  def each
    @bookings.each { |booking| yield booking }
  end
end

class Ocean
  def initialize(size, ships)
    @size = size
    @ships = ships
  end
end

class Ship
  def initialize(name, length, axis)
    @name = name
    @length = length
    @axis = axis
  end
end

ocean = Ocean.new(20, [
  Ship.new("Destroyer", 5, :horizontal),
  Ship.new("Destroyer", 5, :vertical),
  Ship.new("Frigate", 3, :vertical),
  Ship.new("Frigate", 3, :horizontal),
])

class Song
end

class SongCollection
end

class Event
end

class InputEvent
  attr_reader :input

  def initialize(input)
    @input = input
  end
end

events = Queue.new
event_loop = Thread.new do
  loop do
    next if events.empty?
    event = events.pop

    case event.class
    when InputEvent.class
      puts "InputEvent: #{event.input}"
    else
      puts "Unknown event (#{event.class})"
    end
  end
end

sleep 1
events << InputEvent.new("hello")

gets
Thread.kill(event_loop)
