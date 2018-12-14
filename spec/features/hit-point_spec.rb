require 'app'

feature 'hit points' do
  scenario '/play displays player hit points' do
    visit '/'
    fill_in 'player_1_name', with: 'Joe Jo'
    fill_in 'player_2_name', with: 'Banana'
    click_button "Submit"
    expect(page).to have_text "Joe Jo HP: 100"
    expect(page).to have_text "Banana HP: 100"
  end
end
