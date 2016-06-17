class ShoppingCart
  attr_reader :items

  def initialize
   @items = [
     #             Spring Summer Autumn Winter
     #apples        10$    10$    15$    12$
     #oranges        5$     2$     5$     5$
     #grapes        15$    15$    15$    15$
     #banana        20$    20$    20$    21$

   ]
  end

  def add_item(item)
    @items.push(item)
  end
end
  class Item
  def initialize(fruit, price)
    @fruit = fruit
    @price = price
  end
  def price
    if fruit == Item. * 2
      price == "Apples"
    elsif fruit == "Apples" * 3
      price == "Apples" * 2
    elsif fruit == "Grapes" * 4
      price == "Banana", "Oranges" * 0
    end
  end
end

tatjanas_cart  = ShoppingCart.new
apples = Item.new('Apples', 10),
oranges = Item.new('Oranges', 5),
grapes = Item.new('Grapes', 15),
banana = Item.new('Banana', 20),
watermelon = Item.new('Watermelon', 50)

#Person.create(name: "John Doe", age: 27)

tatjanas_cart.add_item(banana)
tatjanas_cart.add_item(watermelon)
tatjanas_cart.checkout

tatjanas_cart.show
1 apple: 10$
2 bananas: 40$

cart.cost = 50

#             Spring Summer Autumn Winter
#apples        10$    10$    15$    12$
#oranges        5$     2$     5$     5$
#grapes        15$    15$    15$    15$
#banana        20$    20$    20$    21$

#pizza =

#{
#  :cheese => {
#    :italian => [ 'mozzarella','asiago'],
#    :french => 'brie'
#  }
#}

#p pizza [:cheese][:italian][1] #prints asiago
