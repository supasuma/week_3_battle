class Game

attr_reader :p1, :p2, :current_turn

  def initialize(player_1=nil, player_2=nil)
    @p1 = player_1
    @p2 = player_2
    @current_turn = player_1
  end

  def attack(player)
    player.take_a_hit
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  private

  def opponent_of(player)
    @current_turn == @p1 ? @p2 : @p1
  end

end
