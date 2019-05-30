require_relative '../config/environment'
spinner
user1 = User.all[0]
main_menu_loop(user1)

puts "Goodbye"
