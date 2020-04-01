feature 'testing infrastructure' do
  scenario 'correctly loads homepage with the expected content' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end