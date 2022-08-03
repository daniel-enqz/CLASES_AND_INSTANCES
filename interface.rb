require_relative 'human'

human = Human.new("Jorge", 17)
human_2 = Human.new("Daniel", 88)

human.height = 1.76

puts human.name
puts human.age
puts human.height
