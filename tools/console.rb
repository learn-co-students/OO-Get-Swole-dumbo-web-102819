# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'


#gym instances
ballys = Gym.new("Bally's Total Fitness")
fitness = Gym.new("24 Hour Fitness")


#lifter instances
arnold = Lifter.new("Arnold", 200)
homer = Lifter.new("Homer", 50)

bob = Lifter.new("Bob", 100)
claire = Lifter.new("Claire", 120)

#membership instances
membership1 = Membership.new(150, arnold, ballys)
membership2 = Membership.new(150, homer, ballys)

membership3 = Membership.new(200, bob, fitness)
membership4 = Membership.new(200, bob, ballys)

membership4 = Membership.new(200, claire, fitness)

# arnold.sign_up(fitness, 200)


binding.pry
puts "Gains!"
