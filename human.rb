require 'pry-byebug'

class Human
  attr_reader :name, :age
  attr_accessor :height, :weight # attr_writer and attr_reader combined, but be selective when to use it!!! :)

  def initialize(name, age)
    # instance variables are the state/data of our instance
    @name = name
    @age = age
    @height = 0
    @weight = 0
  end

  # instance methods are the behaviour of our instance
  # Readers => attr_reader -------------------
  # def name
  #   @name
  # end

  # def age
  #   @age
  # end

  # Writers => attr_writer -----------------
  # def height=(new_height)
  #   @height = new_height
  # end

  # def weight=(new_weight)
  #   @weight = new_weight
  # end

  def info
    "Name: #{@name}, Age: #{@age}, Height: #{height_to_cm(@height)}cm, Weight: #{@weight}kg"
  end

  # Private methods are only accessible within the class
  private

  def height_to_cm(height)
    @height = height * 100
  end
end
