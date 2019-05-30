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

def exit_program_prompt
  puts ""
  puts "********************************"
  puts "****    Exiting Program     ****"
  puts "********************************"
  puts ""
end

def invalid_input_prompt
  puts ""
  puts "********************************"
  puts "****     Invalid Input      ****"
  puts "********************************"
  puts ""
end

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
  input = ""
  while input != "q"
    splash
    list_input_prompt
    input = gets.chomp
    input_selector(input)
  end
end
