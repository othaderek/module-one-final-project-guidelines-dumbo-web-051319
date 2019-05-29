require_relative '../config/environment'

# test data
# user1 = User.all[1]
# user2 = User.new
# character1 = Character.all[0]
# character2 = Character.all[1]
# userChar1 = UserCharacter.all[4]

user1 = User.all[0]
menu_loop(user1)

binding.pry
puts "Goodbye"
