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

def exit_program_prompt
  puts ""
  puts "********************************"
  puts "****    Exiting Program     ****"
  puts "********************************"
  puts ""
1

end

def invalid_input_prompt
  puts ""
  puts "********************************"
  puts "****     Invalid Input      ****"
  puts "********************************"
  puts ""
end

def list_input_prompt
  puts ""
  puts "List characters:  1".center(65)
  puts "List spells:      2".center(65)
  puts "Create character: 3".center(65)
  puts "Delete character: 4".center(65)
  puts "Select Character: 5".center(65)
  puts "Exit program:     q".center(65)
  puts ""
end

def input_selector(input)

  case input
  when "1"
    ruby_clear
    list_characters_prompt
  when "2"
    ruby_clear
    list_spells_prompt
  when "3"
    ruby_clear
    create_character_prompt
    ruby_clear
  when "4"
    ruby_clear
    delete_character_prompt
  when "5"
    ruby_clear
    select_character_prompt
    character_paperdoll
    ruby_clear
  when "q"
    ruby_clear
    exit_program_prompt
  else
    ruby_clear
    invalid_input_prompt
  end

end

def menu_loop
  input = ""
  while input != "q"
    splash
    list_input_prompt
    input = gets.chomp
    input_selector(input)
  end
end

# menu_loop


# binding.pry
# puts "done"
