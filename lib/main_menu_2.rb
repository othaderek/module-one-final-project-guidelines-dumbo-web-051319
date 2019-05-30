# def ruby_clear
#   system "clear" or system "cls"
# end

def splash
  puts "                         ____   ___   ____     "
  puts "                        |  _ \\ ( _ ) |  _ \\  "
  puts "                        | | | |/ _ \\/\\ | | | "
  puts "                        | |_| | (_>  < |_| |   "
  puts "                        |____/ \\___/\\/____/  "
  puts "            ____ _                          _                "
  puts "           / ___| |__   __ _ _ __ __ _  ___| |_ ___ _ __     "
  puts "          | |   | '_ \\ / _` | '__/ _` |/ __| __/ _ \\ '__|  "
  puts "          | |___| | | | (_| | | | (_| | (__| ||  __/ |       "
  puts "           \\____|_| |_|\\__,_|_|  \\__,_|\\___|\\__\\___|_| "
  puts "                 _____                _                      "
  puts "                / ___|_ __ ___   __ _| |_ __  _ __           "
  puts "               | |   | '__/ _ \\/ _` | __/ _ \\| '__|        "
  puts "               | |___| | |  __/ (_| | || (_) | |             "
  puts "                \\____|_|  \\___|\\__,_|\\__\\___/|_|        "
  puts ""
end

def spinner
  ruby_clear
  spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :shark)
  spinner.auto_spin # Automatic animation with default interval
  sleep(2.5) # Perform task
  spinner.stop('Done!') # Stop animation
  ruby_clear
end

def main_menu_list_input_prompt
  main_menu_prompt = TTY::Prompt.new
  main_input = main_menu_prompt.select("Select Option", ["List Characters", "List Spells", "Create Character", "Edit Character", "Delete Character", "Exit"])
end

def main_menu_input_selector(input, user)

  case input
  when "List Characters"
    puts "List Character"
    Character.all.each_with_index do |character, index|
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
      puts ""
      puts "Character number #{index+1}"
      puts "Name: #{character.name}"
      puts "Race: #{character.race}"
      puts "Class: #{character.class_name}"
      puts ""
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
    end
    puts "Press the any key to return to main menu."
    gets.chomp
  when "List Spells"
    puts "List Spells"
    puts "List Character"
    Spell.all.each_with_index do |spell, index|
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
      puts ""
      puts "Spell number #{index+1}"
      puts "Spell name: #{spell.name}"
      puts "Spell description: #{spell.description}"
      puts ""
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
    end
    puts "Press the any key to return to main menu."
    gets.chomp
  when "Create Character"
    puts "Create Character"
  when "Edit Character"
    puts "Edit Character"
  when "Delete Character"
    puts "Delete Character"
  when "Exit"
    puts "Exit"
  end

end

def main_menu_loop(user)
  main_input = ""
  # user1 = User.all[0]
  while main_input != "Exit"
    splash
    main_input = main_menu_list_input_prompt
    main_menu_input_selector(main_input, user)
  end
end

# user1 = User.all[0]
# menu_loop(user1)
