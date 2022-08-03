require_relative 'human'

human = Human.new("Jorge", 17)
human_2 = Human.new("Daniel", 88)

human.height = 1.76
human.weight = 75

puts human.info
