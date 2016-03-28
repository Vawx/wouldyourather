include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :question do
    questionOne "Yes"
    questionTwo "Two"
    postedBy = "FactoryGirl"
  end
end
