def select_character_prompt

  puts ""
  puts "********************************"
  puts "****    Select Character    ****"
  puts "********************************"
  puts ""

end

def select_character_nav

  puts ""
  puts ""
  puts ""
  puts "+----------------------+".center(65)
  puts "|     Main (M)enu      |".center(65)
  puts "+----------------------+".center(65)
  puts ""
  puts " <<------                                              ----->>"
  puts "<<----- (L)ast Character                (N)ext Character ----->>"
  puts " <<------                                              ----->>"
  puts ""
  puts "+----------------------+".center(65)
  puts "|  Character (S)pells  |".center(65)
  puts "+----------------------+".center(65)
  puts ""

end

def ascii_wizard
  puts "         /^\\
    /\\   'V'
   /__\\   I
  //..\\\\  I
  \\].`[/  I
  /l\\/j\\  (]
 /. ~~ ,\\/I
 \\\\L__j^\\/I
  \\/--v}  I
  |    |  I
  |    |  I
  |    l  I
_/j  L l\\_!"
end

def ascii_knight

  puts "       !
      .-.
    __|=|__
   (_/`-`\\_)
   //\\___/\\\\
   <>/   \\<>
    \\|_._|/
     <_I_>
      |||
     /_|_\\"

end

def show_stats

  puts "+-------------------------------+"
  puts "|                               |"
  puts "| Name:______________________   |"
  puts "|                               |"
  puts "| Race:______________________   |"
  puts "|                               |"
  puts "| Class:_____________________   |"
  puts "|                               |"
  puts "+-------------------------------+"

end

def char_input_selector(input)

  case input
  when "l".downcase
    puts "Load Last"
  when "n".downcase
    puts "Load Next"
  when "s".downcase
    puts "List Spells"
  when "m".downcase
    puts "Return to menu"
  else
    puts "Invalid input"
  end

end

def character_paperdoll
  c_input = ""
  while c_input.downcase != "m"
    ascii_wizard
    show_stats
    select_character_nav
    c_input = gets.chomp
    char_input_selector(c_input)
  end
end
