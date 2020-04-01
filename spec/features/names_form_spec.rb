feature 'players enter their names and see them on screen' do
  before do
    visit '/'
  end

  scenario 'player 1 can enter their name in an input field' do
    expect(page).to have_field('player-one-name')
  end

  scenario 'player 2 can enter their name in an input field' do
    expect(page).to have_field('player-two-name')
  end

  scenario 'page has a submit button' do
    expect(page).to have_button('submit')
  end

  scenario 'pressing submit button takes you to the /names path' do
    fill_in 'player-one-name', with: 'Phil'
    fill_in 'player-two-name', with: 'Ed'
    click_button('submit')
    expect(page).to have_current_path('/play')
  end
end