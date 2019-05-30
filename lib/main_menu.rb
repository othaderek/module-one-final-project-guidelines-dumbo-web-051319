<<<<<<< HEAD
=======
def ruby_clear
  system "clear" or system "cls"
end

def spinner
  ruby_clear
  spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :shark)
  spinner.auto_spin # Automatic animation with default interval
  sleep(2.5) # Perform task
  spinner.stop('Done!') # Stop animation
  ruby_clear
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
>>>>>>> joetha

def exit_program_prompt
  puts ""
  puts "********************************"
  puts "****    Exiting Program     ****"
  puts "********************************"
  puts ""
end

def list_input_prompt(user)
  puts ""
  if user.characters
    user.characters.each_with_index { |character, index| puts "                         #{index+1}:  #{character.name}" }
  end
  puts "                         C:  Create character"
  puts "                         S:  Create spell"
  puts "                         q:  Exit program"
  puts ""
end

<<<<<<< HEAD
def input_selector(input, length)

  intput = input.to_i
  if intput > 0 && intput < length +1
    intput -1
  else
    case input
    when "C"
      ruby_clear
      puts "create character"
    when "S"
      ruby_clear
      puts "Create Spell"
      ruby_clear
    when "q"
      ruby_clear
      exit_program_prompt
    else
      ruby_clear
      invalid_input_prompt
    end
  end

end

def menu_loop(user)
  # main_prompt = TTY::Prompt.new
=======
def input_selector(input)
  case input
  when "Login"
    ruby_clear
    login
  when "Create User"
    ruby_clear
    create_user
  end
end

def create_user
  prompt = TTY::Prompt.new
  user_name = prompt.ask("Enter you username:")
  user_pw = prompt.mask("Password")
  user = User.create(name: user_name, password: user_pw)
  puts "Great work #{user_pw}!!"
  menu_loop
end

def menu_loop
>>>>>>> joetha
  input = ""
  while input != "q"
    splash
    # main_prompt needs to be fed an array of characters from user in order to work
    # input = main_prompt.select("", ["Create character".center(60), "Create Spell".center(60), "Exit".center(60)])
    list_input_prompt(user)
    input = gets.chomp
    index = input_selector(input, user.characters.length)
    character_menu_loop(user.characters[index])
  end

end
