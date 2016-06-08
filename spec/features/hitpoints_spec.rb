feature "hit points" do
  scenario 'allows user to see other players hit points' do
    visit("/")
    fill_in :player1, with: "Fai"
    fill_in :player2, with: "Soph"
    click_button "Play!"
    expect(page).to have_content "Soph: 60HP"
  end

end