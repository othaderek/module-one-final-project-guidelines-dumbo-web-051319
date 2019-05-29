def select_character_prompt

  puts ""
  puts "********************************"
  puts "****    Select Character    ****"
  puts "********************************"
  puts ""

end

def select_character_nav

  puts ""
  puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+".center(65)
  puts "|             Main (M)enu              |".center(65)
  puts ""
  puts "<<----- (L)ast Character                (N)ext Character ----->>"
  puts ""
  puts "|         Character (S)pells           |".center(65)
  puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+".center(65)
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

def show_stats(character)

  puts "             +~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
  puts "            ||"
  puts "            ||    Name:       #{character.name}"
  puts "            ||"
  puts "            ||    Race:       #{character.race}"
  puts "            ||"
  puts "            ||    Class:      #{character.class_name}"
  puts "            ||"
  puts "            ||    Spells:      #{character.spells}"
  puts "            +~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"

end

def char_input_selector(input, index)

  case input
  when "l".downcase
    if index == 0
      index = (Character.all.length) -1
    else
      index += -1
    end
  when "n".downcase
    if index == (Character.all.length) -1
      index = 0
    else
      index += 1
    end
  when "s".downcase
    puts "List Spells"
  when "m".downcase
    puts "Return to menu"
  else
    puts "Invalid input"
  end

  index
end

def character_paperdoll
  input = ""
  index = 0
  # ascii_wizard
  while input.downcase != "m"
    show_stats(Character.all[index])
    select_character_nav
    input = gets.chomp
    index = char_input_selector(input, index)
  end
end
