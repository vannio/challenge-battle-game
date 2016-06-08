# require 'capybara'

feature "enter names" do
  scenario 'allows players to fill in their names and submit them' do
    visit("/")
    fill_in :player1, with: "Fai"
    fill_in :player2, with: "Soph"
    click_button "Play!"
    expect(page).to have_content "Fai vs Soph"
  end
end