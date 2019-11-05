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

  def name_of_lifters
    lifters.map do |instance|
      instance.name
    end
  end

  def total_weight_lift
    total = 0
    lifters.each do |instance|
      total += instance.lift_total
    end
    total
  end
end
