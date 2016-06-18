feature "attack" do
  before do
    allow(Kernel).to receive(:rand).and_return(10)
  end

  scenario 'allows players to attack one another' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Van attacked Soph!"
  end

  scenario 'reduces the opponent\'s HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(find('.opponent')).to have_content "90HP"
  end

  scenario 'show a lose message if a player reaches 0 hit_points' do
    sign_in_and_play
    click_button 'Attack'
    while find('.opponent-hitpoints').text.to_i > 0
      click_button 'Attack'
    end
    expect(page).to have_content("HAHA LOSER")
  end
end
