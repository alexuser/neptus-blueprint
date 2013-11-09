class CampusRequirement < ActiveRecord::Base
  belongs_to :course
  attr_accessible :american_cultures, :course_id
end
