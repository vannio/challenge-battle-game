feature "hit points" do
  scenario 'allows user to see other players hit points' do
    sign_in_and_play
    expect(page).to have_content "Soph: 60HP"
  end
end
