feature 'display the player names on a separate page' do
  before do
    visit '/'
    fill_in 'player-one-name', with: 'Phil'
    fill_in 'player-two-name', with: 'Ed'
    click_button('submit')
  end

  scenario 'display the first name' do
    expect(page).to have_content('Phil')
  end

  scenario 'display the second name' do
    expect(page).to have_content('Ed')
  end

  scenario 'display the player 1 hit points' do
    expect(page).to have_content('Phil hit points - 100')
  end

  scenario 'display the player 2 hit points' do
    expect(page).to have_content('Ed hit points - 100')
  end
end