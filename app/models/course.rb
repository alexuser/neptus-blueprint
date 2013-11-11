class Course < ActiveRecord::Base
  has_one :university_requirements
  has_one :campus_requirements
  has_one :ls_college_requirements

  attr_accessible :name

  def fullfilled_requirement?(requirement)
    if (requirement == 'american_cultures')
      course = CampusRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      puts self.name
      puts course.american_cultures
      return  course.american_cultures
    
    elsif (requirement == 'american_history_and_institutions')
      course = UniversityRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.american_history_and_institutions

    elsif (requirement == 'entry_level_writing')
      course = UniversityRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.entry_level_writing

    elsif (requirement == 'arts_and_literature')
      course = LsCollegeRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.arts_and_literature

    elsif (requirement == 'biological_science')
      course = LsCollegeRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.biological_science

    elsif (requirement == 'foreign_language_breadth')
      course = LsCollegeRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.foreign_language_breadth

    elsif (requirement == 'historical_studies')
      course = LsCollegeRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.historical_studies

    elsif (requirement == 'international_studies')
      course = LsCollegeRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.international_studies

    elsif (requirement == 'philosophy_and_values')
      course = LsCollegeRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.philosophy_and_values

    elsif (requirement == 'physical_science')
      course = LsCollegeRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.physical_science

    elsif (requirement == 'quantitative_reasoning')
      course = LsCollegeRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.quantitative_reasoning
 
    elsif (requirement == 'reading_and_composition')
      course = LsCollegeRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.reading_and_composition

    elsif (requirement == 'social_and_behavioral_sciences')
      course = LsCollegeRequirement.find_by_id(self.id)
      if course == nil
        return false
      end
      return course.social_and_behavioral_sciences 
    end
  end 
end
