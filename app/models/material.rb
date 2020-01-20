class Material < ActiveRecord::Base
  has_many :gearset_materials
  has_many :gearsets, through: :gearset_materials
end