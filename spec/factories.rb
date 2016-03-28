include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :question do
    question "Would you rather?"
    optionOne "Yes"
    optionTwo "Two"
    postedBy = "FactoryGirl"
  end
end
