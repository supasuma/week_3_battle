class Game

  attr_reader :players, :current_player, :opponent

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
    @opponent = player_2
  end

  def attack(aPlayer)
    aPlayer.receive_damage
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch
    if @current_player == player_1
      @opponent = player_1
      @current_player = player_2
    else
      @opponent = player_2
      @current_player = player_1
    end
  end

end
