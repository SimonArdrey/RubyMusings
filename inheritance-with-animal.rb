# Animal is a superclass also known as the parent class
# Animal is like a template blueprint.
class Animal
  def initialize(colour, noise) # `initialize` is the default method called when `Animal.new` is executed.
    @colour = colour # @colour is an instance variable, it belongs to Animal
    @noise = noise
  end

  def speak
    puts "#{@noise} I'm #{@colour}"
  end

  def poop
    puts 'pfffttbtpbtpbtpbt'
  end

  def print_animal_info
    puts ''
    puts "=" * 15
    puts "Animal info:"
    puts "Colour: #{@colour}"
    puts "noise: #{@noise}"
    puts "=" * 15
    puts ''
  end
end

# Dog is a subclass also known as the child class
# The Dog blueprint extends and adds more stuff to the Animal blueprint.
class Dog < Animal # Dog inherits from Animal
  def initialize
    super('Brown', 'Woof') # Super calls `initialize` from the Animal superclass / parent
  end

  def bark
    # The Dog subclass / child can also access the instance variables of Animal.
    # Because Dog is also an Animal.
    puts "Bark Bark I'm #{@colour}"
  end
end

# Creating an instance of Dog. my_dog is also an instance of Animal.
my_dog = Dog.new
my_dog.print_animal_info # print_animal_info is from the Animal superclass
my_dog.speak # Speak is from the Animal superclass
my_dog.poop
my_dog.bark # Bark is from the Dog subclass

class Cat < Animal # Cat inherits from Animal
  def initialize
    super('Ginger', 'Meow') # Super calls `initialize` from the Animal superclass
  end

  def pounce
    puts 'Pouncing Boing Boing'
  end
end

# Creating an instance of Cat
my_cat = Cat.new
my_cat.print_animal_info
my_cat.speak
my_cat.pounce # pounce is from the Cat subclass
