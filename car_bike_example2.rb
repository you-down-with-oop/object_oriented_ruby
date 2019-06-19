module Driveable
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

class Car
  include Driveable

  def initialize
    @speed = 0
    @direction = "north"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Driveable

  def initialize
    @speed = 0
    @direction = "north"
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
car.accelerate
car.honk_horn
p car

bike = Bike.new
bike.brake
bike.ring_bell
p bike
