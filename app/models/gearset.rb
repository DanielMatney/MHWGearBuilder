class Gearset < ActiveRecord::Base
  belongs_to :user
  has_one :recipe
  has_many :materials, through: :recipes
end