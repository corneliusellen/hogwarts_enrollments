require 'rails_helper'

describe Student, type: :model do
  describe "relationships" do
    it { is_expected.to have_many(:subjects).through(:enrollments) }
  end
end
