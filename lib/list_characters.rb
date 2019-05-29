def list_characters_prompt

  puts ""
  puts "********************************"
  puts "****   Listing Characters   ****"
  puts "********************************"
  puts ""
  sleep 0.6
  puts ".".center(32)
  sleep 0.6
  puts ".".center(32)
  sleep 0.6
  puts ".".center(32)
  sleep 0.6
  puts ".".center(32)

  Character.all.each do |character|
    puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
    puts ""
    puts "Name: #{character.name}"
    puts "Race: #{character.race}"
    puts "Class: #{character.class_name}"
    puts ""
    puts "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
  end
  
end
