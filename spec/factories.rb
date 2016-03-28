include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :question do
    question "Would you rather?"
    optionOne "Yes"
    optionTwo "Two"
    postedBy = "FactoryGirl"
  end

  factory :user do
    sequence :email do |e|
      "test-#{e}@email.com"
    end
    username "capybara"
    password 'passwordeight'
  end
end
