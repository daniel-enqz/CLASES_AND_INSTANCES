require 'pry-byebug'

class Human
  attr_reader :name, :age
<<<<<<< HEAD

  #Writers => attr_writer and  #Reader => attr_reader
  attr_accessor :height, :weight
=======
  attr_writer :weight

  # attr_writer and attr_reader combined, but be selective when to use it!!! :)
  attr_accessor :height
>>>>>>> 7d035ea1ff6dcf58fd9ff0b29f822b616ead8769

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
