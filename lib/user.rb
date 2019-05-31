class User < ActiveRecord::Base
  has_many :user_characters
  has_many :characters, through: :user_characters

  def print_characters
    puts "Characters List "
    self.characters.each_with_index do |character, index|
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
      puts ""
      puts "Character: #{index+1}"
      puts "Name: #{character.name}"
      puts "Race: #{character.race}"
      puts "Class: #{character.class_name}"
      puts ""
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
    end
  end

  def print_spells
    puts "Character Spell List"
    self.characters.each_with_index do |character, c_index|
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
      puts "Character: #{c_index+1}"
      puts "Name: #{character.name}"
      puts "Race: #{character.race}"
      puts "Class: #{character.class_name}"
      character.spells.each_with_index do |spell, s_index|
        puts "  Spell: #{s_index+1}"
        puts "  Spell name: #{spell.name}"
        puts "  Spell description: #{spell.description}"
        puts ""
        puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
      end
    end
  end

  def edit_characters(user)
    puts "Characters List "
    self.characters.each_with_index do |character, index|
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
      puts ""
      puts "Character: #{index+1}"
      puts "Name: #{character.name}"
      puts "Race: #{character.race}"
      puts "Class: #{character.class_name}"
      puts ""
      puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
    end
    edit_prompt = TTY::Prompt.new
    edit_index = edit_prompt.ask("Select character to be edited by entering an index...")
    i = edit_index.to_i
    character_x = user.characters[i - 1]
    new_name = edit_prompt.ask("What would you like to change name to??")
    get_pause
    character_x.name= "#{new_name}"
    puts "Congratulations!! You successfully changed your characters name to #{new_name}!! Isn't that exciting?!?!..."
    puts "."
    sleep(1)
    puts ".."
    sleep(2)
    puts "..."
    # character_x = user.characters.find_by(name: delete_name)
    character_x.save
    ruby_clear
  end

  def refreshing
    User.find_by(id: self.id)
  end
end
