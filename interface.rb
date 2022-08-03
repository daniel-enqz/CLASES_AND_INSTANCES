require_relative 'human'

human = Human.new("Jorge", 17)
human_2 = Human.new("Daniel", 88)

human.height = 1.76
human.weight = 75

human_2.height = 1.75
human_2.weight = 80

puts human.info
puts human_2.info
