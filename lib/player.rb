class Player
  attr_reader :name, :hit_points
  
  DEFAULT_HIT_POINTS = 100
  ATTACK_DAMAGE = 10

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def hit
    @hit_points -= ATTACK_DAMAGE
  end
end