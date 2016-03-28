include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :question do
    questionOne "Yes"
    questionTwo "Two"
  end
end
