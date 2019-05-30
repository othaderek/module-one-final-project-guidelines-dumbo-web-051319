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
    puts "Press the any key to return to continue."
    gets.chomp
  end

  def refreshing
    User.find_by(id: self.id)
  end

end
