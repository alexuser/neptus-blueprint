class LsCollegeRequirement < ActiveRecord::Base
  belongs_to :course
  attr_accessible :arts_and_literature, :biological_science, :course_id, :foreign_language_breadth, :historical_studies, :international_studies, :philosophy_and_values, :physical_science, :quantitative_reasoning, :reading_and_composition, :social_and_behavioral_sciences

  # This method takes a hash and a user object 
  # And it will set the requirements based on the user object

  @LsCollegeRequirements= [:arts_and_literature, :biological_science, :foreign_language_breadth, :historical_studies, :international_studies, :philosophy_and_values, :physical_science, :quantitative_reasoning, :reading_and_composition, :social_and_behavioral_sciences]


  def self.set_requirements(output_requirements, input_requirements) 
    @LsCollegeRequirements.each{|output| output_requirements[output] = input_requirements[output]}
  	
  end 

  def self.progress(user)
    finished_rate = 0

    @LsCollegeRequirements.each{|output| finished_rate += 10 if user[output] == true}

    return finished_rate
  end 


  def self.get_courses(fulfilled_requirements, is_seven_breadth)
    course_ids = []
    rqf = [:reading_and_composition, :quantitative_reasoning, :foreign_language_breadth]
    sevenbreadth =[:arts_and_literature, :biological_science, :historical_studies, :international_studies, :philosophy_and_values, :physical_science, :social_and_behavioral_sciences]
    if (!is_seven_breadth)
      rqf.each{|output| LsCollegeRequirement.where(output => true).each {|course_id| course_ids << course_id if course_ids.include?(course_id) == false} if (fulfilled_requirements[output] == false)}    
    end

    if (is_seven_breadth)
      sevenbreadth.each{|output| LsCollegeRequirement.where(output => true).each {|course_id| course_ids << course_id if course_ids.include?(course_id) == false} if (fulfilled_requirements[output] == false)}
    end 
    return course_ids
  end 

  def self.fulfill_requirement?(course_id, requirement) 
    return LsCollegeRequirement.find_by_id(course_id).send(requirement)
  end 
  
end

