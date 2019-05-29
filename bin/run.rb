require_relative '../config/environment'

user1 = Users.all[0]
menu_loop(user1)

binding.pry
puts "Goodbye"
