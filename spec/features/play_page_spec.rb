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

  scenario 'player one can attack player 2' do
    sign_in_and_play    
    expect(page).to have_button('Attack player 2')
  end

  scenario 'pressing attack button takes you to an attack confirmation page' do
    sign_in_and_play    
    click_button('Attack player 2')
    expect(page).to have_current_path('/attacked')
  end

  scenario 'attack page confirms attack has been made' do
    sign_in_and_play
    click_button('Attack player 2')
    expect(page).to have_content('You have attacked player 2')
  end
end