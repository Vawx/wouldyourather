require 'rails_helper'

describe 'the user route to create a question' do
  it 'allows the user to create a question' do
    visit root_path
    click_link 'addARather'
    fill_in 'questionField', with: "Would You Rather?"
    fill_in 'optionOneField', with: "Yes"
    fill_in 'optionTwoField', with: "No"
    click_button 'Add Question'
    expect(page).to have_content "Would You Rather?"
    expect(page).to have_content "Yes"
    expect(page).to have_content "No"
  end
end
