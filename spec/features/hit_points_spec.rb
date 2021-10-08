feature "View Hit points" do
  scenario 'see Player 2 Hit points' do
    sign_in_and_play

    expect(page).to have_content 'Mittens: 60HP'
  end

  scenario "see player 1 Hit points" do
    sign_in_and_play
    
    expect(page).to have_content "Charlotte: 60HP"
  end

end
