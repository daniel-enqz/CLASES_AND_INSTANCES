class Human
  attr_reader :name, :age

  #Writers => attr_writer and  #Reader => attr_reader
  attr_accessor :height

  def initialize(name, age)
    # state are instance variables
    @name = name
    @age = age
    @height = 0
    @weight = 0
  end

  # behaviour will be the instance methods
  #Reader => attr_reader
  # def name
  #   @name
  # end

  # def age
  #   @age
  # end

  #Writers => attr_writer
  # def height=(new_height)
  #   @height = new_height
  # end
end
