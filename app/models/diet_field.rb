class DietField < ApplicationRecord

	belongs_to :diet,:class_name => 'Diet'
	
  	validates :schedule, presence: true
  	validates :description, presence: true
  	validates :meal, presence: true


end
