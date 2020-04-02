feature 'the game should switch turns after every attack' do
  scenario 'the play page should show who has the current turn when the game starts' do
    sign_in_and_play
    expect(page).to have_content("Phil's turn")
  end

  scenario 'the play page should show who has the current turn after one turn' do
    sign_in_and_play
    click_button('Attack player 2')
    click_button('Return')
    expect(page).to have_content("Ed's turn")
  end

  scenario 'the attacked page shows the correct message if it is the second player turn' do
    sign_in_and_play
    click_button('Attack player 2')
    click_button('Return')
    click_button('Attack player 2')
    expect(page).to have_content('You have attacked Phil')
  end
end
