def character_list_input_prompt
  prompt1 = TTY::Prompt.new
  # prompt1.ask("Select     ")
  var = prompt1.select("CHOOSE NOW PLEASE NOW", ["Spells".center(60), "Edit".center(60), "Delete".center(60), "Assign Spell".center(60), "Main Menu".center(60)])
end

def character_menu_loop(character)

  input = ""
  while input != "Main Menu"
    input = character_list_input_prompt.strip
    # input = gets.chomp
    character_input_selector(input, character)
  end

end

def character_input_selector(input, character)

  case input
  when "Spells"
    # user1.characters[0].spells
    puts ""
    character.spells.each do |spell|
      puts "Spell Name: #{spell.name}"
      puts "Spell Description: #{spell.description}"
    end
    puts ""
    puts ""
    # binding.pry
  when "Edit"
    ruby_clear

  when "Delete"
    character.delete
  when "Add Spell To Book"
    ruby_clear
    # list spells to assign
  else
    ruby_clear
    invalid_input_prompt
  end

end
