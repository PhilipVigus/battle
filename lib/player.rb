class Player
  attr_reader :name, :hit_points

  DEFAULT_HIT_POINTS = 100

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def wound(damage)
    @hit_points -= damage
  end

  def dead?
    @hit_points <= 0
  end
end
