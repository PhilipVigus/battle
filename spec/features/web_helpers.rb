def sign_in_and_play
  visit '/'
  fill_in 'player-one-name', with: 'Phil'
  fill_in 'player-two-name', with: 'Ed'
  click_button('submit')
end