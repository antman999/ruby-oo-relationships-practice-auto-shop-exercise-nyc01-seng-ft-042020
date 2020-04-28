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
    car.carOwner == self
  end
end


def mechanics
#we are going to go into the cars method above and grab all the mechanics and put them in a list
  cars.map do |mech|
    mech.mechanic
end.uniq 
end


def self.average
  averagerides = Car.all.count
  car_count = 0 
  Car.all.each do |carss|
    car_count = car_count + carss.car.count
end
car_count/averagerides
end
end
