require_relative '../config/environment'

user1 = User.all[3]
menu_loop(user1)

binding.pry
puts "Goodbye"
