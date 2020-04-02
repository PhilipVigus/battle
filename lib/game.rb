class Game
  attr_reader :player1, :player2, :current_player

  ATTACK_DAMAGE = 10

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def hit(player)
    player.wound(ATTACK_DAMAGE)
  end

  def switch_player
    @current_player == @player1 ?
          @current_player = @player2 :
          @current_player = @player1
  end

  def inactive_player
    @current_player == @player1 ? @player2 : @player1
  end

  def self.instance
    @current_game
  end

  def self.create(player1, player2)
    @current_game = Game.new(player1, player2)
  end
end
