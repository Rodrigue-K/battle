require 'app'

# feature 'check the homepage' do
#   scenario 'checks the homepage says Testing infrastructure working!' do
#     visit '/'
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'players set up form' do
  scenario 'names provided' do
    visit '/'
    fill_in 'player_1_name', with: 'Joe Jo'
    fill_in 'player_2_name', with: 'Banana'
    click_button "Submit"
    expect(page).to have_text "Joe Jo"
  end
end
