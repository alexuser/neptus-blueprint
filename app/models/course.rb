class Course < ActiveRecord::Base
  has_one :university_requirements
  has_one :campus_requirements
  has_one :ls_college_requirements

  attr_accessible :name


  def find_all_courses_for_requirement(requirement)
  	if (requirement == 'university_requirements')
  		@coureses = nil 

  		@courese_ids = UniversityRequirement.find_all

  		@courese_ids.each do |course_id|
  			@coureses << Course.find_by_id(course_id)
  		end 

  		return @coureses
  	elsif (requirement == '')
  	
  	end 
  end 
end
