class Human
  attr_reader :name, :age
  attr_writer :weight
  
  # attr_writer and attr_reader combined, but be selective when to use it!!! :)
  attr_accessor :height

  def initialize(name, age)
    # instance variables are the state/data of our instance
    @name = name
    @age = age
    @height = 0
    @weight = 0
  end

  # instance methods are the behaviour of our instance
  # Readers => attr_reader
  # def name
  #   @name
  # end

  # def age
  #   @age
  # end

  # Writers => attr_writer
  # def height=(new_height)
  #   @height = new_height
  # end
  
  # def weight=(new_height)
  #   @weight = new_height
  # end 
end
