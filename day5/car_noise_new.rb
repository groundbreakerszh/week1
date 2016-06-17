class Car

def initialize(engine)
    @noise = "Brrrrrroooooom"
    @engine = engine
 end

 def noise
    "#{@noise} #{@engine.noise}"
 end
end

class Engine
  attr_reader :noise
   def initialize(noise)
    @noise = noise
 end
end


engine = Engine.new("brrrrrrrrrrrrrrraaaaaaaal")
car1 = Car.new(engine)

p car1.noise
