class Character
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def start_game
    Room.room_1
  end
end

class Room
    def initialize(start)
      @start = start
    end


      def self.room_1
        puts "Find the door that will change your future...Type N, S, W or E"
        ruby = gets.chomp
          if ruby == "N"
             self.room_2
          elsif ruby == "S"
             self.room_3
          elsif ruby == "W"
             self.room_4
          elsif ruby == "E"
             self.room_5
          else
            puts "Honey, the force will never be with you"
          end
      end

  def self.room_2
      puts "The diamond what is going to change your future is close, type 'collect' to pick it up"
      ruby = gets.chomp
      if ruby == "collect"
        puts "*** Now you are a RUBY WIZZARD ***"
      end
  end

  def self.room_3
        puts "That is not the right choice  - Find the door what will change your future - choose wisely"
  end

  def self.room_4
    puts "This door will bring you nowhere  - Find the door what will change your future - choose wisely"
  end

  def self.room_5
      puts "This door will bring you nowhere  - Find the door what will change your future - choose wisely"
  end

end

tatjana = Character.new("Tatjana")
puts tatjana.name
tatjana.start_game
