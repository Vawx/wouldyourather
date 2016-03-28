require 'rails_helper'

describe 'the user route to a new question' do
  it 'allows the user to create a question' do
    visit "/questions/new"
    expect(page).to have_content "Option one"
  end
end
