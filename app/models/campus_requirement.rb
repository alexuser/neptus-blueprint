class CampusRequirement < ActiveRecord::Base
  belongs_to :course
  attr_accessible :american_cultures, :course_id


  def self.set_requirements(completed_requirements, user) 
  	completed_requirements[:american_cultures] = user[:american_cultures]
  end 

end
