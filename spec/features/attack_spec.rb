require 'spec_helper'

feature 'attack' do
  scenario 'attack player2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Johnny attacked Ben")
  end
end
