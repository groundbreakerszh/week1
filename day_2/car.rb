class Car
  def initialize(sound = "PPPPPPPPPPP")
    @sound = sound
  end

  def make_sound
    puts @sound
  end
  def self.model
    puts "Maserati"
 end
end

my_car = Car.new("Broom")
my_car.make_sound

Car.model
