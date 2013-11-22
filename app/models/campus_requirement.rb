class CampusRequirement < ActiveRecord::Base
  belongs_to :course
  attr_accessible :american_cultures, :course_id


  def self.set_requirements(output_requirements, input_requirements) 
  	output_requirements[:american_cultures] = input_requirements[:american_cultures]
  end 

  def self.progress(user)
  	user[:american_cultures] == true ? 100 : 0
  end 


  def self.get_courses(fufilled_requirements)
  	course_ids = []
  	
  	if (fufilled_requirements[:american_cultures] == false)
  		CampusRequirement.where(:american_cultures =>true).each {|course_id| course_ids << course_id}
  	end 

  	return course_ids
  end 

end
