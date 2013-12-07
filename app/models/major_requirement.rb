
class MajorRequirement < ActiveRecord::Base
	
  # This method takes a hash and a user object 
  # And it will set the requirements based on the user object
  def self.set_requirements(output_requirements, input_requirements) 
    @cs_majors.each_key{|key| output_requirements[key] = input_requirements[key]}
  end 

  def self.progress(user)
  	finished_rate = 0
  	#TODO 
    @cs_majors.each_key{|key| finished_rate += 1 if user[key] == true}
  	return finished_rate*100/21
  end

  def self.get_courses(fufilled_requirements)
    course_ids = []
    @cs_majors.each{|key, value| course_ids << Course.find_by_name(value) if (fufilled_requirements[key] == false)}
    return course_ids
  end 

end
