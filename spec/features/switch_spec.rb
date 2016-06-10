feature "switch" do
  scenario "players can switch turns" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Switch turns'
    expect(find('.opponent')).to have_content('90HP')
  end
end
