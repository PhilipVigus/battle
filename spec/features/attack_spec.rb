feature 'attacking a player' do
  scenario 'player one can attack player 2' do
    sign_in_and_play
    expect(page).to have_button('Attack')
  end

  scenario 'pressing attack button takes you to an attack confirmation page' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_current_path('/attacked')
  end

  scenario 'attack page confirms attack has been made' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('You have attacked Ed')
  end
end
