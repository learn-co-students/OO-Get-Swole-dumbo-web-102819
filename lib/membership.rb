class Membership
  attr_reader :cost

  @@all =[]
  def self.all
    @@all
  end

  def initialize(gym, cost, member)
    @cost = cost
    @gym = gym
    @member = member
    self.class.all << self
  end

end
