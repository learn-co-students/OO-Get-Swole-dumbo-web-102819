class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  #Gets a list(arr) of all memberships an instance of a lifer has
  def memberships
    Membership.all.select{|membership|
      membership.lifter == self
    }
  end

  #Gets a list of all gyms an instance of lifter has memberships to
  def gyms
    memberships.map{|membership|
      membership.gym
    }
  end

  #Get the total cost of a specific lifters gym membership
  def total_cost
    memberships.map{|membership|
      membership.cost
    }.sum
  end

  #Given a gym and cost, sign a lifter up for the gym(create new membership)
  def sign_up_for_gym(gym, cost)
    Membership.new(self, gym, cost)
  end

  #Get the average lift of all lifters
  def self.average_lift_total
    lifter_totals = @@all.map{|lifter|
      lifter.lift_total
    }
    average(lifter_totals)
  end

  #Gets a list(arr) of all Lifters
  def self.all
    @@all
  end

  #Averages an array of numbers because apparently ruby doesn't have one implicitly? Could be wrong
  def self.average(array)
    array.reduce(0){|sum, num|
      sum += num
    }.to_f / array.length
  end
end
