require_relative '../config/environment'

list_input_prompt

# spinner
user1 = User.all[0]
main_menu_loop(user1)

puts "Goodbye"
