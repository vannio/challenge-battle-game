feature "switch" do
  scenario "players can switch turns" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Switch turns'
    expect(page).to have_content('Van: 50HP')
  end
end
