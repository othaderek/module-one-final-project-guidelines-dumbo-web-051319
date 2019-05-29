def character_menu_loop

    input = ""
    while input != "q"
      splash
      list_input_prompt(user1)
      input = gets.chomp
      input_selector(input)
    end

end


def character_input_selector(input, len)

  intput = input.to_i

  if intput > 0 && intput < len -1
    case intput
    when Fixnum
      ruby_clear
      puts "Is number"
    end
  else
    case input
    when "C"
      ruby_clear
      puts "create character"
    when "S"
      ruby_clear
      create_character_prompt
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
