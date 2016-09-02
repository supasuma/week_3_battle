require 'spec_helper'

feature 'attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content("James's attack on Tam was successful!")
  end
end
