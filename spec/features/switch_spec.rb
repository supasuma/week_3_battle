require 'spec_helper'

feature 'switch turns' do
  scenario 'start of the game' do
    sign_in_and_play
    expect(page).to have_content("Johnny's turn")
    click_button("Attack")
    click_link("OK")
    expect(page).to_not have_content("Johnny's turn")
    expect(page).to have_content("Ben's turn")
  end
end
