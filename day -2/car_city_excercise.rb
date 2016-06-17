#require "pry"
class Car
  attr_reader :city
  def initialize
    @city = []
  end
  def add_city(city)
      @city.push(city)
      #binding pry
  end
  def visited
    puts "Cities I visited with my cool car"
    @city.each do |current_city|
      puts " --> #{current_city}"
  end
end
  def save_visited
    IO.write("visited.txt", @city)
  end
end

# class RacingCar < Car
# def make_sound
#puts "Brooooooooom"
#end
#end

#my_car.make_sound


my_car = Car.new
my_car.add_city("Amsterdam")
my_car.add_city("Barcelona")
my_car.add_city("Paris")

my_car.visited
my_car.save_visited
