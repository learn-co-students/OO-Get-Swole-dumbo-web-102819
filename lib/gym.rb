class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all 
  end 
  def memberships
    Membership.all.select do |instance|
      instance.gym == self
    end 
  end 
  def lifters
    memberships.map do |instance|
      instance.lifter
    end 
  end 
  def lifter_names
    lifters.map do |instance|
      instance.name 
    end 
  end 
  def new_membership(cost, lifter)
    Membership.new(cost, self, lifter)
  end 
  def lift_totals
    lifters.sum do |instance|
      instance.lift_total
    end
  end 

end
