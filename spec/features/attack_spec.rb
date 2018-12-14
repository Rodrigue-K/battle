feature 'attack' do
  scenario 'Player 1 can attack player 2 and get confirmation' do
    sign_in_and_play
    click_button 'p1_attacks'
    expect(page).to have_content 'Joe Jo attacked Banana'
  end

  scenario 'Player 2 can attack player 1 and get confirmation' do
    sign_in_and_play
    click_button 'p2_attacks'
    expect(page).to have_content 'Banana attacked Joe Jo'
  end


end