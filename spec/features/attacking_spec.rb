feature "Attacking" do
  scenario 'Player 2' do
    sign_in_and_play
    click_link 'Attack!'

    expect(page).to have_content 'Charlotte attacks Mittens'
  end

  scenario 'reduces Player 2s HP' do
    sign_in_and_play
    click_link 'Attack!'
    click_link 'OK'

    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end