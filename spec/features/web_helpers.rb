def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Charlotte'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end

def attack_and_return
  click_link 'Attack!'
  click_link 'OK'
end