require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#owners
owner1 = CarOwner.new("anthony")
owner2 = CarOwner.new("anthony2")
owner3 = CarOwner.new("anthony3")
#car
car1 = Car.new("nissan","maxima","sedan")
car2 = Car.new("toyota","supra","sport")
car3 = Car.new("honda","civic","sedan")
#mechanic
mechanic1 = Mechanic.new("joe","sedan")
mechanic2 = Mechanic.new("tim","sport")
mechanic3 = Mechanic.new("jimmy","sedan")
binding.pry
