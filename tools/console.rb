# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Mable", 400)
l2 = Lifter.new("Melvin", 300)
l3 = Lifter.new("Lee", 350)

g1 = Gym.new("Crunch")
g2 = Gym.new("Planet Fitness")
g3 = Gym.new("YMCA")

m1 = Membership.new(10,l1,g1)
m2 = Membership.new(15,l2,g2)
m3 = Membership.new(20,l3,g3)
m4 = Membership.new(15,l1,g2)
m5 = Membership.new(20,l1,g3)
m6 = Membership.new(15,l2,g2)


binding.pry

puts "Gains!"
