class Weight < ApplicationRecord
  belongs_to :user
  belongs_to :diet

  validates :value, presence: true
  validates :weight_date, presence: true
  

end
