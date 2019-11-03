class Membership
  attr_reader :lifter, :gym, :cost
  @@all = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    @@all << self
  end

  #Gets a list of all memberships
  def self.all
    @@all
  end
end
