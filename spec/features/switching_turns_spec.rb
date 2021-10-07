feature Battle do
  scenario "displays player 1's turn" do
    sign_in_and_play
    expect(page).to have_content ("Charlotte's Turn")
  end

  scenario "turns to switch after attacking" do
    sign_in_and_play
    click_link "Attack!"
    click_link 'OK'
    expect(page).to have_content("Mittens's Turn")
    expect(page).not_to have_content("Charlotte's Turn")
  end

end