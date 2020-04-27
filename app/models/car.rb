class Car

  attr_reader :make, :model
@@all = []
  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end
  def self.all
    @@all
  end
  def classifications
    # Car.classifications` Get a list of all car classifications
    car_classification = Car.all.map do |cc|
      cc.classification
  end
end
# `Car.find_mechanics(classification)` Get a list of mechanics that have an 
# expertise that matches the passed in car classification
def find_mechanics
 c = classifications & Mechanic[specialty]
 c 
end

end
