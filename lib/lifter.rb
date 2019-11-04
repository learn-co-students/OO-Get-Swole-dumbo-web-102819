class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  def self.all
    @@all 
  end 
  def memberships
    Membership.all.select do |instance|
      instance.lifter == self
    end 
    #get list of all gyms that specific lifter has membership to
  end 
  def gyms 
    memberships.map do |instance|
      instance.gym
    end 
  end 
  def self.average
    total_variable = 0
    @@all.each do |instance|
      total_variable += instance.lift_total 
    end 
    total_variable / @@all.count
  end 
  def total_cost
    memberships.sum do |instance|
      instance.cost
    end 
  end 
  def new_membership(cost, gym)
    Membership.new(cost, gym, self)
  end 
end
