require 'rails_helper'

describe Teacher, type: :model do
  describe "relationships" do
    it { is_expected.to have_many(:subjects) }
  end
end 
