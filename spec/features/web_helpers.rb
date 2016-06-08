def sign_in_and_play
	visit("/")
    fill_in :player1, with: "Fai"
    fill_in :player2, with: "Soph"
    click_button "Play!"
end 