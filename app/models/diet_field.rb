class DietField < ApplicationRecord

	belongs_to :diet,:class_name => 'Diet'

end
