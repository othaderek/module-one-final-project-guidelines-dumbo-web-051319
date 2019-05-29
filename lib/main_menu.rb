
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
    case intput
    when 0..length
      puts "Is character"
    end
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
  # test data
  user1 = User.all[3]
  user2 = User.new
  character1 = Character.all[0]
  character2 = Character.all[1]
  userChar1 = UserCharacter.all[4]

  input = ""
  while input != "q"
    splash
    list_input_prompt(user1)
    input = gets.chomp
    input_selector(input, user1.characters.length)
  end

end
