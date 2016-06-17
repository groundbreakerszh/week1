class User
  attr_reader :username, :password
  def initialize(username,password)
    @username = username
    @password = password
  end
  def login(username, password)
    puts "Whats your name please?"
    username = gets.chomp
    if username == @username
      puts access
    else
      puts "Not for you today ;)"
    end
 end
 def self.access
   puts "Without Password no entrence - tell me the secret password"
   password = gets.chomp
   hash = "250e77f12a5ab6972a0895d290c4792f0a326ea8"
   if  password == hash
     puts "Welcome to the secret club"
   end
 end
end

username = User.new("Tatjana")
username.login
