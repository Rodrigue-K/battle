class Player
  DEF_HIT_POINTS = 100
  DEF_STRENGTH = 10
  attr_reader :name, :hit_points

  def initialize(name, hit_points= DEF_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attacked(strength = DEF_STRENGTH)
    @hit_points -= strength
  end

end
