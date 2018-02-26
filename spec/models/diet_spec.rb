require 'rails_helper'

RSpec.describe Diet, type: :model do
  	context "Validates" do

		it { should validate_presence_of(:end_date) }

		it "is valid with all fields" do
			diet = create(:diet)
			expect(diet).to be_valid
		end
 
	end

	context "Associations" do
 		it { is_expected.to belong_to(:user)} 		
				
	end
end
