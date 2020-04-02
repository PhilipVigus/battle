class Game
  attr_reader :player1, :player2

  ATTACK_DAMAGE = 10

  def initialize(player1, player2)
    @player1 = player1  
    @player2 = player2
  end
  
  def hit(player)
    player.wound(ATTACK_DAMAGE)
  end
end
