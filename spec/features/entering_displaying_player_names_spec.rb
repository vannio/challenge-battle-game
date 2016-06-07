require 'spec_helper'

describe 'Entering displaying player names' do

  before do
    visit '/'
  end

  it 'allow players to submit names, submit form, view names' do
    fill_in('player1', with: 'Toby')
    fill_in('player2', with: 'Steve')
    click_button('submit')
    expect(page).to have_content('Hello Toby and hello Steve')
  end





end
