require 'spec_helper'

feature 'entering names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content('Johnny vs. Ben')
  end
end

feature 'Displaying hitpoints' do
  scenario 'Player 1 can see Player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content('60 HP')
    click_button('Attack')
    expect(page).to have_content('50 HP')
  end
end
