describe "Checking Hitpoints" do
  it "displays the hitpoints" do
    sign_in_and_play
    expect(page).to have_content("hitpoints")
  end
end
