require_relative '../config/environment'
# system 'afplay assets/music/tp.mp3'
# x = Thread.new { sleep 0.1; print "x"; print "y"; print "z" }
# spinner
user1 = User.all[0]
main_menu_loop(user1)

puts "Goodbye"
