# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new('drake', 180)
l2 = Lifter.new('josh', 210)
l3 = Lifter.new('megan', 358)

g1 = Gym.new('GloboGym')
g2 = Gym.new('Planet Fitness')
g3 = Gym.new('Average Joe\'s')

m1 = l1.sign_up_for_gym(g1, 60)
m2 = l1.sign_up_for_gym(g2, 80)
m3 = l2.sign_up_for_gym(g3, 100)
m4 = l2.sign_up_for_gym(g1, 20)
m5 = l3.sign_up_for_gym(g2, 26)
m6 = l3.sign_up_for_gym(g3, 8)








binding.pry

puts "Gains!"
