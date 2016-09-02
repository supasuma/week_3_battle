class Game

  attr_reader :players, :current_player, :opponent

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
    @opponent = nil
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
    @current_player = opponent_of(current_player)
  end

  def opponent #need a unit test
    if @current_player == player_1
     @opponent = player_2
   else
     @opponent = player_1
    end
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end


end
