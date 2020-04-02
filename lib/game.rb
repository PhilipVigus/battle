class Game
  ATTACK_DAMAGE = 10

  def hit(player)
    player.wound(ATTACK_DAMAGE)
  end
end
