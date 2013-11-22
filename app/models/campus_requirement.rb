class CampusRequirement < ActiveRecord::Base
  belongs_to :course
  attr_accessible :american_cultures, :course_id


  def self.set_requirements(output_requirements, input_requirements) 
  	output_requirements[:american_cultures] = input_requirements[:american_cultures]
  end 

  def self.progress(user)
  	user[:american_cultures] == true ? 100 : 0
  end 

end
