describe 'Entering displaying player names' do

  before do
    visit '/'
    fill_in('player1', with: 'Toby')
    fill_in('player2', with: 'Steve')
    click_button('submit')
  end

  it 'allow players to submit names, submit form, view names' do
    expect(page).to have_content('Hello Toby and hello Steve')
  end

  it "displays the hitpoints" do
    expect(page).to have_content("hitpoints")
  end
end


# describe "Checking Hitpoints" do
  # before do
  #   visit '/play'
  # end

  # it "displays the hitpoints" do
  #   expect(page).to have_content("hitpoints")
  # end
# end
