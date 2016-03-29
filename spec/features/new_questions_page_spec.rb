require 'rails_helper'

describe 'the user route to a new question' do
  it 'allows the user to create a question' do
    visit root_path
    user = create(:user)
    user.email = 'capybaratest@test.com' # have to change this here because it tries to use a email already taken from prior test
    visit new_user_registration_path
    fill_in "username", with: "Username"
    fill_in 'Email', with: user.email
    fill_in 'firstPassword', with: user.password
    fill_in 'secondPassword', with: user.password
    click_button 'signUp'
    click_link 'addARather'
    expect(page).to have_content "Option one"
  end
end
