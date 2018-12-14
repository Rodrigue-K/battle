# require 'app'

feature 'hit points' do
  scenario '/play displays player hit points' do
    sign_in_and_play
    expect(page).to have_text "Joe Jo HP: 100"
    expect(page).to have_text "Banana HP: 100"
  end

  scenario 'Player 1 attack reduces player 2 HP by 10 points' do
    sign_in_and_play
    click_button 'p1_attacks'
    click_button 'attack again?'
    expect(page).to have_text 'Banana HP: 90'
  end

  scenario 'Player 2 attack reduces player 1 HP by 10 points' do
    sign_in_and_play
    click_button 'p2_attacks'
    click_button 'attack again?'
    expect(page).to have_text 'Joe Jo HP: 90'
  end
end
