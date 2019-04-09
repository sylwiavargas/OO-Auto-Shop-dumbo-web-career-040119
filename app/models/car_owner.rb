class CarOwner

  attr_reader :name, :car_owner, :car
  attr_accessor :owned_cars

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def owned_cars
    @owned_cars = Car.all.select{|car| car.car_owner == self}
  end

  def self.average_number_of_cars   #omg. average is this simple. i spent 30 minutes on this.
    number = Car.all.size/@@all.size
  end

  def mechanics
    mechanics = owned_cars.map(&:mechanic)
  end

end

###############################
 # CarOwner

  # Get a list of all owners
  # Get a list of all the cars that a specific owner has
  # Get a list of all the mechanics that a specific owner goes to
  # Get the average amount of cars owned for all owners
