class Course < ActiveRecord::Base
  has_one :university_requirements
  has_one :campus_requirements
  has_one :ls_college_requirements

  attr_accessible :name

end
