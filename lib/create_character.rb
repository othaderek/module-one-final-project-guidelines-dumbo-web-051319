def character_create_splash
  puts ""
  puts "********************************"
  puts "****   Creating Character   ****"
  puts "********************************"
end

def character_name_prompt

  puts "********************************"
  puts "***  Enter Character's name  ***"
  puts "********************************"
  puts ""

  character_name = gets.chomp

end

def character_race_prompt

  puts ""
  puts "********************************"
  puts "***  Select Character's race ***"
  puts "********************************"
  puts ""
  puts "  Dragonborn"
  puts "  Dwarf"
  puts "  Elf"
  puts "  Gnome"
  puts "  Half-Elf"
  puts "  Halfling"
  puts "  Half-Orc"
  puts "  Human"
  puts "  Tiefling"
  puts ""

  race = gets.chomp

end

def character_class_prompt

    puts ""
    puts "**********************************"
    puts "***  Select Character's Class  ***"
    puts "**********************************"
    puts ""
    puts "  Barbarian"
    puts "  Bard"
    puts "  Cleric"
    puts "  Druid"
    puts "  Fighter"
    puts "  Monk"
    puts "  Paladin"
    puts "  Ranger"
    puts "  Rogue"
    puts "  Sorcerer"
    puts "  Warlock"
    puts "  Wizard"
    puts ""

    character_class = gets.chomp

end

def character_save
  puts ""
  puts "********************************"
  puts "****    Saving Character    ****"
  puts "********************************"
  puts ""
  sleep 0.6
  puts ".".center(32)
  sleep 0.6
  puts ".".center(32)
  sleep 0.6
  puts ".".center(32)
  sleep 0.6
  puts ".".center(32)
end

def create_character_prompt
  character_create_splash
  character_name_prompt
  character_race_prompt
  character_class_prompt
  character_save
end
