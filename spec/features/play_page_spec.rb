feature 'display the player status' do
  before { sign_in_and_play }

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
