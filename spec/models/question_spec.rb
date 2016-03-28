require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should validate_presence_of :questionOne }
  it { should validate_presence_of :questionTwo }

  it 'creates a question' do
    question = create(:question)
    expect(question.questionOne).to eq "Yes"
    expect(question.questionTwo).to eq "Two"
  end
end
