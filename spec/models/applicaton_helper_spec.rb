require 'rails_helper'

RSpec.describe ApplicationHelper, :type => :helper do
  describe "#get percent of both votes" do
    it "converts both votes on question to a percent of each" do
      expect(helper.percent_of_vote( 14, 14)).to eq([50, 50])
    end
  end
end
