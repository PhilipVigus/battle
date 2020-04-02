feature 'display the player status' do
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

  scenario 'display player 2 reduced hit points after an attack' do
    sign_in_and_play
    click_button('Attack player 2')
    click_button('Return')
    expect(page).to have_content('Ed hit points - 90')
  end
end