# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

g1 = Gym.new("Gold's")
g2 = Gym.new("24hr")
g3 = Gym.new("Soul")
l1 = Lifter.new("A", 100)
l2 = Lifter.new("B", 200)
l3 = Lifter.new("C", 300)

l1.new_membership(300, g1)
l2.new_membership(100, g2)
l3.new_membership(200, g3)
l1.new_membership(100, g2)





binding.pry

puts "Gains!"
