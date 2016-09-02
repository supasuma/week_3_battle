class Game

  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
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

end
