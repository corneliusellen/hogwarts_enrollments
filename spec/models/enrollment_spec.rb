require 'rails_helper'

describe Enrollment, type: :model do
  describe "relationships" do
    it { is_expected.to belong_to(:student) }
    it { is_expected.to belong_to(:subject) }
  end
end
