
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
