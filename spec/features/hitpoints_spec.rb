feature "hit points" do
  scenario 'allows user to see other players hit points' do
    sign_in_and_play
    expect(find('.opponent')).to have_content "100HP"
  end

  scenario 'shows the attacker hit points' do
    sign_in_and_play
    expect(find('.attacker')).to have_content '100HP'
  end
end
