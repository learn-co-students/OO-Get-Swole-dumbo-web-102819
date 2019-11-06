class Gym
  attr_reader :name

  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def memberships
    Membership.all.select{|ship| ship.gym == self}
  end

  def lifters
    memberships.map{|ship| ship.member}
  end

  def lifter_names
    lifters.map{|person| person.name}
  end

  def combined_lifts
    memberships.map{|person| person.lift_total}.sum

end
