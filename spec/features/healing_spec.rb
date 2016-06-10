feature "Healing" do
  scenario "Heals player's hit points" do
    sign_in_and_play
    click_button "Attack"
    click_button "Heal"
    expect(page).to have_content("Soph healed itself!")
  end
end
