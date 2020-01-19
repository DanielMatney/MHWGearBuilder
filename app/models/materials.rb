class Material < ActiveRecord::Base
  has_and_belongs_to_many :gearset
  has_and_belongs_to_many :monster
end