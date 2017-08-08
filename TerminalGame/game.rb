class Position
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def move(direction, amount = 1)
    case direction
    when :north
      Position.new(@x + amount, @y)
    when :south
      Position.new(@x - amount, @y)
    when :east
      Position.new(@x, @y + amount)
    when :west
      Position.new(@x, @y - amount)
    else
      puts "No such direction #{direction.to_s}"
    end
  end

  def ==(other_object)
    @x == other_object.x and @y == other_object.y
  end
end

class Player
  def initialize
    @position = Position.new(0, 0)
    @health = 100
    @pickups = [] # Collected items
  end

  def damage(health)
    @health = @health - health
    say "Ouch!, lost #{health} points."
  end

  def move(direction)
    desired_position = @position.move(direction, 1)
  end

  def say(msg)
    puts 'Player: ' + msg
  end
end

class World
  def initialize
    @size = 10
    @obstacles = [
      { :position => Position.new(5, 5), :kind => :enemy },
    ]
  end

  private

  def find_obstacle_at(position)
    @obstacles.find {|o| o[:position] = position}
  end

  public

  def can_move_to?(position)
    obstacle = find_obstacle_at(position)
    obstacle[:kind] != :baddy
  end
end

class Obstacle
  def initialize
  end

  def interact(player)
  end
end

class MapCell
  def initialize
  end
end
