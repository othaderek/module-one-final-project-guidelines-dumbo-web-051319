def login

  r = []
  font = TTY::Font.new(:standard)
  prompt = TTY::Prompt.new
  pastel = Pastel.new
  puts pastel.green(font.write("LOGIN"))
  user_name = prompt.ask('username:')
  User.all.collect{|u| r << u if u.name == user_name}
  p = r.pop
  if p.name == user_name
    ruby_clear
    puts pastel.green(font.write("PASSWORD"))
    pw = prompt.mask("password:")
    if pw == p.password
      puts "Success!"
      puts "Welcome #{p.name}"
      input_selector(p)
    else
      list_input_prompt
    end
  end
  # input_selector(p)
end


def list_input_prompt
  prompt = TTY::Prompt.new
  input = prompt.select("Welcome!".center(65), ["Login".center(60), "Create User".center(60)])
  # binding.pry
  input = input.strip
  input_selector(input)
end
