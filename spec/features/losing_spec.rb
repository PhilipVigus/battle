feature 'losing the game when you reach 0 HP' do
  scenario 'when player 2 hits 0 HP, they are shown a losing screen' do
    sign_in_and_play

    18.times do
      click_button('Attack')
      click_button('Return')
    end

    click_button('Attack')
    expect(page).to have_current_path('/loss')
  end

  scenario 'when player dies they are shown an appropriate message' do
    sign_in_and_play

    18.times do
      click_button('Attack')
      click_button('Return')
    end

    click_button('Attack')
    expect(page).to have_content('Sorry Ed, you lost')
  end
end
