def list_input_prompt
<<<<<<< HEAD
  splash
=======
>>>>>>> d195dab253fd1b03d75168a8e2414876b85a7bb0
  prompt = TTY::Prompt.new
  input = prompt.select("Welcome!".center(65), ["Login".center(60), "Create User".center(60)])
  # binding.pry
  puts 7.chr
  input = input.strip
<<<<<<< HEAD
  login_input_selector(input)
end

def login_input_selector(input)
  case input
  when "Login"
    ruby_clear
    login
  when "Create User"
    ruby_clear
    create_user
  end
end

=======
  input_selector(input)
end
>>>>>>> d195dab253fd1b03d75168a8e2414876b85a7bb0

def login
  r = []
  font = TTY::Font.new(:standard)
  prompt = TTY::Prompt.new
  pastel = Pastel.new
  spinner
  puts pastel.green(font.write("LOGIN"))
  user_name = prompt.ask('username:')
  puts 7.chr
  User.all.collect{|u| r << u if u.name == user_name}
  p = r.pop
  if p.name == user_name
    puts 7.chr
    spinner
    puts pastel.green(font.write("PASSWORD"))
    pw = prompt.mask("password:")
    if pw == p.password
      spinner
      puts "Success!"
      puts "Welcome #{p.name}"

    else
      list_input_prompt
    end
  else
    puts "Try again!!"
  end
end
<<<<<<< HEAD

def create_user
  prompt = TTY::Prompt.new
  user_name = prompt.ask("Enter you username:")
  user_pw = prompt.mask("Password")
  user = User.create(name: user_name, password: user_pw)
  puts "Great work #{user_pw}!!"
  menu_loop
end
=======
>>>>>>> d195dab253fd1b03d75168a8e2414876b85a7bb0
