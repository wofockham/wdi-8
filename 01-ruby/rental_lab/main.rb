require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'

# $tenants = []

def create_tenant
  puts "Tenant Creation:"
  print "Enter tenant name: "
  name = gets.chomp

  print "Enter tenant age: "
  age = gets.chomp

  print "Enter tenant gender: "
  gender = gets.chomp

  # $tenants << Tenant.new name, age, gender
  Tenant.new name, age, gender
end

tenants = []
tenants << create_tenant


# Seed data
craigsy = Tenant.new 'Craigsy', 22, 'male'
jonesy = Tenant.new 'Jonesy', 55, 'male'

apt12 = Apartment.new 'Apartment 12', 200, 1, 9

converted_warehouse = Building.new '123 Fake St', 'Gothic Industrial', false, false, 1000

converted_warehouse.apartments['12'] = apt12

require 'pry'
binding.pry
