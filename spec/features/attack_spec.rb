require 'spec_helper'

feature 'attack' do
  scenario 'attack player2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Johnny attacked Ben")
  end
  scenario 'attack reduce 10 HP' do
    sign_in_and_play
    click_button('Attack')
    click_link('OK')
    expect(page).not_to have_content("Ben 60 HP")
    expect(page).to have_content("Ben 50 HP")
  end
end
