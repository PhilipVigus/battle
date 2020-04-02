class Game
  attr_reader :player1, :player2, :current_turn

  ATTACK_DAMAGE = 10

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = @player1
  end

  def hit(player)
    player.wound(ATTACK_DAMAGE)
  end

  def switch_turn
    @current_turn == @player1 ?
          @current_turn = @player2 :
          @current_turn = @player1
  end
end
