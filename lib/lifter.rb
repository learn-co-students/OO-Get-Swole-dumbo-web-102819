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
  end

  def gyms
    memberships.map do |instance|
      instance.gym
    end
  end

  def self.average_lift_total
    total = 0
    self.all.each do |instance|
      total += instance.lift_total
    end
    (total / self.all.length).round
  end

  def total_cost
    total = 0
    memberships.each do |instance|
      total += instance.cost
    end
    total
  end

  def sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

end
