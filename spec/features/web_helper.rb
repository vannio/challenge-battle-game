
def sign_in_and_play
  visit '/'
  fill_in('player1', with: 'Toby')
  fill_in('player2', with: 'Van')
  click_button('submit')
end
