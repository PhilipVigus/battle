feature 'display the player names on a separate page' do
  scenario 'display the first name' do
    sign_in_and_play
    expect(page).to have_content('Phil')
  end

  scenario 'display the second name' do
    sign_in_and_play
    expect(page).to have_content('Ed')
  end

  scenario 'display the player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content('Phil hit points - 100')
  end

  scenario 'display the player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Ed hit points - 100')
  end
end