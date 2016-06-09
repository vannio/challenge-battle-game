feature "enter names" do
  scenario 'allows players to fill in their names and submit them' do
    sign_in_and_play
    expect(page).to have_content "Van vs. Soph"
  end
end
