require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should validate_presence_of :question }
  it { should validate_presence_of :optionOne }
  it { should validate_presence_of :optionTwo }
  it { should have_many :users}

  it 'creates a question' do
    question = create(:question)
    expect(question.question).to eq "Would you rather?"
    expect(question.optionOne).to eq "Yes"
    expect(question.optionTwo).to eq "Two"
  end
end
