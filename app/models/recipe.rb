class Recipe < ActiveRecord::Base
  belongs_to :gearset
  has_and_belongs_to_many :materials
end