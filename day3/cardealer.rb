class CarDealer
  def initialize(inventory)
    @inventory = inventory
  end

  def cars(brand)
   @inventory[brand.to_sym].each { |model|
     puts model
   }
 end
end

inventory = {
 :Ford => ["Fiesta", "Mustang"],
 :Honda => ["Civic", "CR-V"]
}

cardealer = CarDealer.new(inventory)
cardealer.cars("Ford")
