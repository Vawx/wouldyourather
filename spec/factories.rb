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

    def login_admin
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:admin]
        admin = FactoryGirl.create(:admin)
        sign_in :user, admin # sign_in(scope, resource)
      end
    end
end
