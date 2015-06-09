class Vehicle
  def number_of_wheels
    true
  end
  def age!
    true
  end
  def age
    4
  end
  def color
    true
  end
  def number_of_gears
    true
  end
end

class Motorized < Vehicle
  def refuel
    true
  end
  def has_motor
    true
  end
  def tank_size
    true
  end

end

class Motorbike < Motorized
  def number_of_wheels
    2
  end
end

class Car < Motorized
end

class Bicycle < Vehicle
  def initialize(gears)
    number_of_gears = gears
  end
end

class Skateboard < Vehicle
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, skateboard, bike]

vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.class} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end