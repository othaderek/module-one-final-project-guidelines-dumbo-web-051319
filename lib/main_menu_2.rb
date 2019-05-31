def ruby_clear
  system "clear" or system "cls"
end

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

def get_pause
  puts "Press any to continue."
  gets.chomp
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
  # binding.pry
  case input
  when "List Characters"
    if user.characters.length > 0
      user.print_characters
    else
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
      puts "User has no characters."
      puts ""
    end
    get_pause

  when "List Spells"
    if user.characters.length > 0
      user.print_spells
    else
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
      puts "User has no characters."
      puts ""
    end
    get_pause

  when "Create Character"
    puts "Creating Character"

  when "Edit Character"
    puts "Editing Character"


  when "Delete Character"
    user.print_characters
    delete_prompt = TTY::Prompt.new
    prompt_array = user.characters.map {|character| character.name}
    delete_name = delete_prompt.select("Select Character to delete.", prompt_array)
    delete_index = prompt_array.find_index(delete_name)
    character_x = user.characters[(delete_index.to_i)]
    character_x.destroy
  when "Exit"
    puts "Exiting"
  end
  user
end

def main_menu_loop(user)
  main_input = ""
  # user.characters << Character.all[0]
  # user1 = User.all[0]
  while main_input != "Exit"
    splash
    main_input = main_menu_list_input_prompt
    main_menu_input_selector(main_input, user)
    user = user.refreshing
  end
end
