class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic, :cars, :name, :specialty

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    classifications = self.all.map(&:classification)
    classifications.uniq
  end

  def its_a_match
    matched_mechanics = Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end

end


###################################
#### Car

  # Get a list of all cars
  # Get a list of all car classifications
  # Get a list of mechanics that have an expertise that matches the car classification
