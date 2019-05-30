def character_create_splash
  puts ""
  puts "********************************"
  puts "****   Creating Character   ****"
  puts "********************************"
  sleep(1)
  # character_name_prompt
end

def character_name_prompt
  ruby_clear
  puts "********************************"
  puts "***  Enter Character's name  ***"
  puts "********************************"
  puts ""

  prompt = TTY::Prompt.new
  user_name = prompt.ask('What is your characters name?:')
  puts 7.chr
  user_name
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

  prompt = TTY::Prompt.new
  race = prompt.ask("What is your character's race?:")
  puts 7.chr
  race

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

    prompt = TTY::Prompt.new
    class_name = prompt.ask("What is your character's class?:")
    puts 7.chr
    class_name
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

def create_character_prompt(user)
  character_create_splash
  c_name = character_name_prompt
  c_race = character_race_prompt
  c_class = character_class_prompt
  c = Character.create(name: c_name, race: c_race, class_name: c_class)
  u = UserCharacter.create(user_id: user.id, character_id: c.id)
  character_save
  ruby_clear  
end
