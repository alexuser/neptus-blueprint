class College < ActiveRecord::Base
  has_many :majors
  attr_accessible :name
end
