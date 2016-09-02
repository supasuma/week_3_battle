require 'spec_helper'

feature 'attack' do
  scenario 'attack player2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Johnny attacked Ben")
  end

  scenario 'attack player_1' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    click_button('Attack')
    expect(page).to have_content("Ben attacked Johnny")
  end

  scenario 'attack reduce 10 HP' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    #expect(page).not_to have_content("Ben: 60 HP")
    expect(page).to have_content("Ben: 50 HP")
  end

  scenario 'display hit points for both players' do
    sign_in_and_play
    expect(page).to have_content("Ben: 60 HP")
    expect(page).to have_content("Johnny: 60 HP")
  end
end
