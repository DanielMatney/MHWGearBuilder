class Gearset < ActiveRecord::Base
  belongs_to :user
  has_many :materials
end