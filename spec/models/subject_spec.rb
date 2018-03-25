require 'rails_helper'

describe Subject, type: :model do
  describe "relationships" do
    it { is_expected.to have_many(:students).through(:enrollments) }
  end
end
