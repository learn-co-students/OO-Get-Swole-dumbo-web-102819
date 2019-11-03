class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #Gets a list of all memberships for an instance of gym
  def memberships
    Membership.all.select{|membership|
      membership.gym == self
    }
  end

  #Gets a list of all lifters belonging to an instance of a gym
  def lifters
    memberships.map{|membership|
      membership.lifter
    }
  end

  #Gets the names of the lifters from this gym
  def lifter_names
    lifters.map{|lifter|
      lifter.name
    }
  end

  def lift_total_sum
    lifters.map{|lifter|
      lifter.lift_total
  }.sum
  end

  #Gets a list of all gyms
  def self.all
    @@all
  end
end
