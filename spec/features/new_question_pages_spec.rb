require 'rails_helper'

describe 'the user route to create a question' do
  it 'allows the user to create a question' do
    user = create(:user)
    user.email = 'capybaratest@test.com' # have to change this here because it tries to use a email already taken from prior test
    visit new_user_registration_path
    fill_in "username", with: "Username"
    fill_in 'Email', with: user.email
    fill_in 'firstPassword', with: user.password
    fill_in 'secondPassword', with: user.password
    click_button 'signUp'
    visit new_question_path
    fill_in 'questionField', with: "Would You Rather?"
    fill_in 'optionOneField', with: "Yes"
    fill_in 'optionTwoField', with: "No"
    click_button 'Add Question'
    expect(page).to have_content "Would You Rather?"
    expect(page).to have_content "Yes"
    expect(page).to have_content "No"
  end
end
