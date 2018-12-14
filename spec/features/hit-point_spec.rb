# require 'app'

feature 'hit points' do
  scenario '/play displays player hit points' do
    sign_in_and_play
    expect(page).to have_text "Joe Jo HP: 100"
    expect(page).to have_text "Banana HP: 100"
  end
end
