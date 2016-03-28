require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should validate_presence_of :questionOne }
  it { should validate_presence_of :questionTwo }
end
