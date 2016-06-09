feature "attack" do
  scenario 'allows players to attack one another' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Van attacked Soph!"
  end

  scenario 'reduces the opponent\'s HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Soph: 50HP"
  end
end


