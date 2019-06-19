class Vehicle
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize
    super()
    @fuel = 0
    @make = "Ford"
    @model = "Explorer"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_type, input_weight)
    super()
    @type = input_type
    @weight = input_weight
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
car.accelerate
car.honk_horn
p car

bike = Bike.new("mountain", 100)
bike.brake
bike.ring_bell
p bike
