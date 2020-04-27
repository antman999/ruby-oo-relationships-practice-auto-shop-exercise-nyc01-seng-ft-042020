class CarOwner

  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all<<self
  end


 def self.all
@@all
 end


 def cars
  # CarOwner#cars` Get a list of all the cars that a specific owner has X
  #we are gonna go into the cars class grab all the cars then link them to this instance of self
  
  Car.all.select do |car|
    car.carowner == self
  end
end


def mechanics
#we are going to go into the cars method above and grab all the mechanics and put them in a list
  cars.map do |mech|
    mech.mechanic
end
end


def average
  averagerides = @@all.map do |rides|
    rides.model
end
averagerides.sum / averagerides.size
end
end
