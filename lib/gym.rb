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

  def self.memberships(gym)
    Membership.all.select { |membership| membership.gym.name == gym.name }
  end

  def self.lifters(gym)
    memberships(gym).map { |membership| membership.lifter }
  end

  def lifter_names
   membership_array =  Membership.all.select { |membership|membership.gym == self }
   membership_array.map { |membership| membership.lifter.name }.uniq
  end 

  def lift_total_sum
    membership_array =  Membership.all.select { |membership|membership.gym == self }
    lifter_array = membership_array.map { |membership| membership.lifter }.uniq
    lifter_array.map { |lifter| lifter.lift_total }.sum 
  end
end
