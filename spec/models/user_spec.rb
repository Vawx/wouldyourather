require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :questions }

  it "should be nilclass if user is logged out" do
    #expect(subject.current_user).to eq(nil)
  end
end
