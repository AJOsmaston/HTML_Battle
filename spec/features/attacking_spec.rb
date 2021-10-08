feature "Attacking" do
  scenario 'Player 2' do
    sign_in_and_play
    click_link 'Attack!'

    expect(page).to have_content 'Charlotte attacks Mittens'
  end

  scenario 'reduces Player 2s HP' do
    sign_in_and_play
    attack_and_return

    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end

  scenario "mittens(p2) now attacks charlotte" do
    sign_in_and_play
    attack_and_return
    click_link "Attack!"

    expect(page).to have_content "Mittens attacks Charlotte"
  end

  scenario "after mittens attack, charlotte looses hp by 10" do
    sign_in_and_play
    attack_and_return
    attack_and_return

    expect(page).not_to have_content 'Charlotte: 60HP'
    expect(page).to have_content 'Charlotte: 50HP'
  end
end