class Lifter

  attr_reader :name, :lift_total

  @@all = []
  def self.all
    @@all
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self
  end

  def memberships
    Membership.all.select{|ship| ship.lifter == self}
  end

  def gyms
    self.memberships.map{|ship| ship.gym}
  end

  def cost
    gyms.map{|ship| ship.cost}.sum
  end

  def new_membership(gym, cost)
    Membership.new (gym, self, cost)
  end

end
