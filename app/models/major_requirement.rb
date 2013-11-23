class MajorRequirement < ActiveRecord::Base

	attr_accessible :cs_sixtyonea
	attr_accessible :cs_sixtyoneb
	attr_accessible :cs_sixtyonec
	attr_accessible :math_onea
	attr_accessible :math_oneb
	attr_accessible :math_fiftyfour
	attr_accessible :cs_seventy
	attr_accessible :ee_fourty
	attr_accessible :ee_twenty
	attr_accessible :ee_fourtytwo
	attr_accessible :cs_oneseventy
	attr_accessible :cs_onesixtytwo
	attr_accessible :cs_onefifty
	attr_accessible :cs_onefiftytwo 
	attr_accessible :cs_onesixty
	attr_accessible :cs_onesixtyone
	attr_accessible :cs_onesixtyfour
	attr_accessible :cs_onesixtynine
	attr_accessible :cs_oneeightyfour
	attr_accessible :cs_oneeightysix
	attr_accessible :cs_oneeightyeight

  # This method takes a hash and a user object 
  # And it will set the requirements based on the user object
  def self.set_requirements(output_requirements, input_requirements) 
  	output_requirements[:cs_sixtyonea] = input_requirements[:cs_sixtyonea]
  	output_requirements[:cs_sixtyoneb] = input_requirements[:cs_sixtyoneb]
  	output_requirements[:cs_sixtyonec] = input_requirements[:cs_sixtyonec]
  	output_requirements[:math_onea] = input_requirements[:math_onea]
  	output_requirements[:math_oneb] = input_requirements[:math_oneb]
  	output_requirements[:math_fiftyfour] = input_requirements[:math_fiftyfour]
  	output_requirements[:cs_seventy] = input_requirements[:cs_seventy]
  	output_requirements[:ee_fourty] = input_requirements[:ee_fourty]
  	output_requirements[:ee_twenty] = input_requirements[:ee_twenty]
  	output_requirements[:ee_fourtytwo] = input_requirements[:ee_fourtytwo]
  	output_requirements[:cs_oneseventy] = input_requirements[:cs_oneseventy]
  	output_requirements[:cs_onesixtytwo] = input_requirements[:cs_onesixtytwo]
  	output_requirements[:cs_onefifty] = input_requirements[:cs_onefifty]
  	output_requirements[:cs_onefiftytwo ] = input_requirements[:cs_onefiftytwo]
  	output_requirements[:cs_onesixty] = input_requirements[:cs_onesixty]
  	output_requirements[:cs_onesixtyone] = input_requirements[:cs_onesixtyone]
  	output_requirements[:cs_onesixtyfour] = input_requirements[:cs_onesixtyfour]
  	output_requirements[:cs_onesixtynine] = input_requirements[:cs_onesixtynine]
  	output_requirements[:cs_oneeightyfour] = input_requirements[:cs_oneeightyfour]
  	output_requirements[:cs_oneeightysix] = input_requirements[:cs_oneeightysix]
  	output_requirements[:cs_oneeightyeight] = input_requirements[:cs_oneeightyeight]
  end 

  def self.progress(user)
  	finished_rate = 0
  	#TODO 
    finished_rate += 1 if user[:cs_sixtyonea] == true
    finished_rate += 1 if user[:cs_sixtyoneb] == true
    finished_rate += 1 if user[:cs_sixtyonec] ==  true
    finished_rate += 1 if user[:math_onea] == true
    finished_rate += 1 if user[:math_oneb] == true
    finished_rate += 1 if user[:math_fiftyfour] == true
    finished_rate += 1 if user[:cs_seventy] == true
    finished_rate += 1 if user[:ee_fourty] == true
    finished_rate += 1 if user[:ee_twenty] == true
    finished_rate += 1 if user[:ee_fourtytwo] == true
    finished_rate += 1 if user[:cs_oneseventy] == true
    finished_rate += 1 if user[:cs_onesixtytwo] == true
    finished_rate += 1 if user[:cs_onefifty] == true
    finished_rate += 1 if user[:cs_onefiftytwo] == true
    finished_rate += 1 if user[:cs_onesixty] == true
    finished_rate += 1 if user[:cs_onesixtyone] == true
    finished_rate += 1 if user[:cs_onesixtyfour] == true
    finished_rate += 1 if user[:cs_onesixtynine] == true
    finished_rate += 1 if user[:cs_oneeightyfour] == true
    finished_rate += 1 if user[:cs_oneeightysix] == true
    finished_rate += 1 if user[:cs_oneeightyeight] == true

  	return finished_rate*100/21
  end

  def self.get_courses(fufilled_requirements)
  	course_ids = []

  	if (fufilled_requirements[:cs_sixtyonea] == false)
  		course_ids << Course.find_by_name("CS 61A")
  	end 

    if (fufilled_requirements[:cs_sixtyoneb] == false)
      course_ids << Course.find_by_name("CS 61B")
    end 

    if (fufilled_requirements[:cs_sixtyonec] == false)
      course_ids << Course.find_by_name("CS 61C")
    end 

    if (fufilled_requirements[:math_onea] == false)
      course_ids << Course.find_by_name("Math 1A")
    end 

    if (fufilled_requirements[:math_oneb] == false)
      course_ids << Course.find_by_name("Math 1B")
    end 

    if (fufilled_requirements[:math_fiftyfour] == false)
      course_ids << Course.find_by_name("Math 54")
    end 

    if (fufilled_requirements[:cs_seventy] == false)
      course_ids << Course.find_by_name("CS 70")
    end 

    if (fufilled_requirements[:ee_fourty] == false)
      course_ids << Course.find_by_name("EE 40")
    end 

    if (fufilled_requirements[:ee_twenty] == false)
      course_ids << Course.find_by_name("EE 20")
    end 

    if (fufilled_requirements[:ee_fourtytwo] == false)
      course_ids << Course.find_by_name("EE 42")
    end 

    if (fufilled_requirements[:cs_oneseventy] == false)
      course_ids << Course.find_by_name("CS 170")
    end 

    if (fufilled_requirements[:cs_onesixtytwo] == false)
      course_ids << Course.find_by_name("CS 162")
    end 

    if (fufilled_requirements[:cs_onefifty] == false)
      course_ids << Course.find_by_name("CS 150")
    end 

    if (fufilled_requirements[:cs_onefiftytwo] == false)
      course_ids << Course.find_by_name("CS 152")
    end 

    if (fufilled_requirements[:cs_onesixty] == false)
      course_ids << Course.find_by_name("CS 160")
    end 

    if (fufilled_requirements[:cs_onesixtyone] == false)
      course_ids << Course.find_by_name("CS 161")
    end 

    if (fufilled_requirements[:cs_onesixtyfour] == false)
      course_ids << Course.find_by_name("CS 164")
    end 

    if (fufilled_requirements[:cs_onesixtynine] == false)
      course_ids << Course.find_by_name("CS 169")
    end 

    if (fufilled_requirements[:cs_oneeightyfour] == false)
      course_ids << Course.find_by_name("CS 184")
    end 

    if (fufilled_requirements[:cs_oneeightysix] == false)
      course_ids << Course.find_by_name("CS 186")
    end 

    if (fufilled_requirements[:cs_oneeightyeight] == false)
      course_ids << Course.find_by_name("CS 188")
    end 

  	return course_ids
  end 

end
