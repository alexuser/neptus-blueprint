
class MajorRequirement < ActiveRecord::Base
  @cs_majors = {:cs_sixtyonea => "CS 61A", :cs_sixtyoneb => "CS 61B", :cs_sixtyonec => "CS 61C", :math_onea => "Math 1A", :math_oneb => "Math 1B", :math_fiftyfour => "Math 54",  :cs_seventy => "CS 70",  :ee_fourty => "EE 40",  :ee_twenty => "EE 20",  :ee_fourtytwo => "EE 42",  :cs_oneseventy => "CS 170",  :cs_onesixtytwo => "CS 162",  :cs_onefifty => "CS 150",  :cs_onefiftytwo => "CS 152",  :cs_onesixty => "CS 160",  :cs_onesixtyone=> "CS 161",  :cs_onesixtyfour => "CS 164",  :cs_onesixtynine => "CS 169",  :cs_oneeightyfour => "CS 184",  :cs_oneeightysix => "CS 186",  :cs_oneeightyeight => "CS 188"}
	
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
