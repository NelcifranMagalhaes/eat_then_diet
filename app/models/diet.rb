class Diet < ApplicationRecord
	belongs_to :user
	has_many :diet_fields,inverse_of: :diet
	has_many :weights
	
	accepts_nested_attributes_for :diet_fields, reject_if: :all_blank, allow_destroy: true

	validates :end_date, presence: true
	validates :begin_date, presence: true
	validates :weight, presence: true
	validates :height, presence: true
	validates :ideal_weight, presence: true

end
