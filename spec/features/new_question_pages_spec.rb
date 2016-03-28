require 'rails_helper'

describe 'the user route to create a question' do
  it 'allows the user to create a question' do
    visit root_path
    click_link 'Add A Rather'
    fill_in 'questionFieldOne', with: "This is question ONE"
    fill_in 'questionFieldTwo', with: "This is question TWO"
    click_button 'Add Question'
    expect(page).to have_content "This is question ONE"
    expect(page).to have_content "This is question TWO"
  end
end
