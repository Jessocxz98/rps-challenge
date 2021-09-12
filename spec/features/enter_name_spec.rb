feature 'enter name before playing' do
  scenario 'submit name via form' do
    visit('/')
    fill_in :user_name, with: 'Jess'
    click_button 'submit'
    expect(page).to have_content 'Get ready to make your choice Jess'
  end
end