require 'game'
require 'spec_helper'

describe Game do

  subject(:game) {Game.new(player_1, player_2)}
  let (:player_1) {double :player}
  let (:player_2) {double :player}

  describe '#attack' do
    it 'attacks the player and damages them' do
      expect(player_2).to receive(:take_a_hit)
      game.attack(player_2)
    end
  end

  describe '#current_turn' do
    it 'switches turns after an attack' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end

  end

end
