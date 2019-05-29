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

def menu_loop(user)

  user1 = User.all[0]
  character1 = Character.all[0]
  character2 = Character.all[1]

  input = ""
  while input != "q"
    splash
    list_input_prompt
    input = gets.chomp
    input_selector(input)
  end
end
