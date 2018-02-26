class Diet < ApplicationRecord
	belongs_to :user
	
	validates :end_date, presence: true
	validates :begin_date, presence: true
	validates :weight, presence: true
	validates :height, presence: true
	validates :ideal_weight, presence: true

end
