class Mechanic

  attr_reader :name, :specialty, :car, :classification

  @@all = []


  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def all_cars_serviced # Get a list of all cars that a mechanic services
    all_cars_serviced = Car.all.select{|car| car.mechanic == self}
  end

##not working
  def all_car_owners_serviced # Get a list of all the car owners that go to a specific mechanic
    all_car_owners = self.all_cars_serviced.map(&:car_owner)
  end

  def car_owners_names # Get a list of the names of all car owners who go to a specific mechanic
    car_owner_names = self.all_car_owners_serviced.map(&:name)
  end

end

#######################
# Mechanic

    # Get a list of all mechanics
    # Get a list of all cars that a mechanic services
    # Get a list of all the car owners that go to a specific mechanic

#TO DO:
# Get a list of the names of all car owners who go to a specific mechanic
