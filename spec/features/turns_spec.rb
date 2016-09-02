require 'spec_helper'
require_relative '../../app'

feature 'switch turns' do
  context 'seeing current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content("James's turn")
    #   expect{ click_link 'Attack' }.to change{ $game.p2.hp }.by(-10)
    #   click_link 'Next Round'
    #   expect{ click_link 'Attack' }.to change{ $game.p1.hp }.by(-10)
     end
     scenario 'after player 1 has attacked' do
       sign_in_and_play
       click_link 'Attack'
       click_link 'Next Round'
       expect(page).to_not have_content("James' turn")
       expect(page).to have_content("Tam's turn")
     end
  end
end
