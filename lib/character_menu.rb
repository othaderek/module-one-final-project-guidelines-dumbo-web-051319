def character_list_input_prompt
  prompt1 = TTY::Prompt.new
  var = prompt1.select("", ["Spells".center(60), "Edit".center(60), "Delete".center(60), "Assign Spell".center(60), "Main Menu".center(60)])
end


def character_input_selector(input, character)

  prompt_selector = TTY::Prompt.new
  case input
  when "Spells"
    # user1.characters[0].spells
    character.spells.each_with_index do |spell, index|
      puts ""
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
      puts "Spell: #{index}"
      puts "Spell Name: #{spell.name}"
      puts "Spell Description: #{spell.description}"
      puts ""
    end
    puts "Enter to leave"
    gets.chomp

  when "Edit"
    # prompt1.ask("Select     ")
    var = prompt_selector.select("", ["Edit Name".center(60), "Edit Race".center(60), "Edit Class".center(60), "Edit Spell".center(60), "Main Menu".center(60)])

  when "Delete"
    puts "Deleting: #{character.name}"
    # character.delete

  when "Assign Spell"
    Spell.all.each_with_index do |spell, index|
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
      puts "Add spell: #{index}"
      puts "Spell Name: #{spell.name}"
      puts "Spell Description: #{spell.description}"
      puts ""
    end
    var = prompt_selector.ask("Select a spell to add to book.")
    # list spells to assign
  else
    ruby_clear
    invalid_input_prompt
  end

end

def character_menu_loop(character)
  input = ""
  # while (input != "Delete") || (input != "Main Menu")
    input = character_list_input_prompt.strip
    character_input_selector(input, character)
    # binding.pry
  # end
end
