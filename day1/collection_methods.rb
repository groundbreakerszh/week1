class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

$homes = [
  nizer = Home.new("Nizar's place", "San Juan", 2, 42),
  fernando = Home.new("Fernando's place", "Seville", 5, 47),
  josh = Home.new("Josh's place", "Pittsburgh", 3, 41),
  gonzalo = Home.new("Gonzalo's place", "Málaga", 2, 45),
  ariel = Home.new("Ariel's place", "San Juan", 4, 49),
  alina = Home.new("Alina's place", "Amsterdam", 6, 30),
  david = Home.new("David's place", "Barcelona", 3, 20),
  miguel = Home.new("Miguel's place", "Valencia", 1, 15),
  flo = Home.new("Flo's place", "Munich", 2, 10),
  marjon = Home.new("Marjon's place", "Berlin", 7, 54)
]

def array_printer(array)
  array.each do | cities |
    puts "#{owners.name} |  #{place.city} |  #{space.capacity} |  #{rent.price}"
  end
end

homes.each do |home|
  puts "#{home.name} in #{home.city}\nPrice:#{home.price} a night!"
end

def sortByPrice (homes)
  homes.sort! { |a,b| b.price <=> a.price }
end

def sortByCapacity (homes)
  homes.sort! { |a,b| b.capacity <=> a.capacity }
end

def filter (homes, text)
  result = homes.select {|home| home.city == text}
end

total_prices = homes.reduce(0.0) do |sum, hm|
   sum + hm.price
end
 puts "The price average is " + (total_prices/homes.length).to_s

def find (homes_user_input,price)
home_user_input = homes.find do |hm|

  hm.price == price.to_i
end
  puts "#{home.name} in #{home.city}, capacity #{home.capacity}, price #{home.price}"
end

puts "Here are our available homes:"
array_printer(homes)

puts "How would you like this sorted?
\nType price if you want them sorted by price
\nType rooms if you want to sort by the number of rooms
\nType city if you want to sort by the city"

criteria = gets.chomp

if criteria == "price"
  puts (sortByPrice(homes))
elsif criteria == "rooms"
  puts (sortByCapacity(homes))
elsif criteria ==  "city"
  puts (filter(homes))
else
  puts"wrong"
end
