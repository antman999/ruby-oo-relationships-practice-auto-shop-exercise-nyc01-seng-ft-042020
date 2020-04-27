require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#owners
owner1 = CarOwner.new("anthony")
owner2 = CarOwner.new("anthony2")
owner3 = CarOwner.new("anthony3")
#mechanic
mechanic1 = Mechanic.new("joe","sedan")
mechanic2 = Mechanic.new("tim","sport")
mechanic3 = Mechanic.new("jimmy","sedan")
#car
car1 = Car.new("nissan","maxima","sedan", mechanic1, owner1)
car2 = Car.new("toyota","supra","sport", mechanic2, owner2)
car3 = Car.new("honda","civic","sedan", mechanic3, owner3)
binding.pry
