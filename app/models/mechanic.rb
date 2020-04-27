class Mechanic

  attr_reader :name, :specialty
@@all = []
def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end
def self.all
  @@all
end

def cars
  spec = Mechanic.all.map do |carr|
    carr.specialty
end
spec
end


def car_owners
  # Mechanic#car_owners` 
  #Get a list of all the car owners that go to a specific mechanic 
  CarOwner.all.map do |vehicle|
    vehicle.mechanic == self 
end
end

def car_owners_names 
  ##Get a list of the names of all car owners who go to a specific mechanic
 ar = car_owners.map do |na|
  na.name
end
end

end
