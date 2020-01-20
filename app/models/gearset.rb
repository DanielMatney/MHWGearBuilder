class Gearset < ActiveRecord::Base
  belongs_to :user
  has_one :gearset_materials
  has_many :materials, through: :gearset_materials
end