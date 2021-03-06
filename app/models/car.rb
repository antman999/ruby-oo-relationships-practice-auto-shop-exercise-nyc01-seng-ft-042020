class Car

  attr_reader :make, :model, :classification, :mechanic, :carOwner
@@all = []
  def initialize(make, model, classification, mechanic, carOwner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @carOwner = carOwner
    @@all << self
  end
  def self.all
    @@all
  end
  def self.classifications
    # Car.classifications` Get a list of all car classifications
       Car.all.map do |cc|
      cc.classification
  end
end
# `Car.find_mechanics(classification)` Get a list of mechanics that have an 
# expertise that matches the passed in car classification
def self.find_mechanics(classification)
 Mechanic.all.select do |m|
  m.specialty == classification
end
end

end
