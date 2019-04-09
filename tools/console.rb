require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

zuza = CarOwner.new("Zuza-owner")
piotrus = CarOwner.new("piotrus-owner")
seba = CarOwner.new("Sebek-owner")

al = Mechanic.new("Al-mech", "clunker")
kan = Mechanic.new("Kan-mech", "exotic")
karolina = Mechanic.new("Karolina-mech", "antic")

auto1 = Car.new("coś", "fiat", "clunker", zuza, al)
auto2 = Car.new("cosiek", "bmw", "clunker", piotrus, al)
auto3 = Car.new("plep", "audi", "exotic", seba, kan)
auto4 = Car.new("plep", "audi", "antic", seba, karolina)




binding.pry
