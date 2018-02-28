class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :diets#,optional: true
  has_many :weights
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
