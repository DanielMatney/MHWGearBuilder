class Material < ActiveRecord::Base
  has_many :recipes
  has_many :gearsets, through: :recipes
end