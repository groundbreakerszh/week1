class Car
def self.speed_control
  puts "You just arrived to a speed control! Enter your current speed?"
  current_speed = gets.chomp
  if current_speed > 100
    puts "Whooooooohhhhh slow down"
  end
end
    
