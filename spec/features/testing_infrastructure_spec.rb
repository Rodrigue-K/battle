require 'app'

# feature 'check the homepage' do
#   scenario 'checks the homepage says Testing infrastructure working!' do
#     visit '/'
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'players set up form' do
  scenario 'names provided' do
    visit '/names'
    fill_in 'name', with: 'Joe Jo'
    click_button "Submit"
    expect(page).to have_text "Joe Jo"
  end
end
