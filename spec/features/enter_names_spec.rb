require 'spec_helper'

feature 'entering names' do
  scenario 'submitting names' do
    visit('/')
    fill_in(:player_1_name, with: 'Jonny')
    fill_in(:player_2_name, with: 'Ben')
    click_button('Play')
    expect(page).to have_content('Jonny vs. Ben')
  end
end

feature 'Displaying hitpoints' do
  scenario 'Player 1 can see Player 2 hitpoints' do
    visit('/')
    fill_in(:player_1_name, with: 'Jonny')
    fill_in(:player_2_name, with: 'Ben')
    click_button('Play')
    expect(page).to have_content('45/60 HP')
  end
end
