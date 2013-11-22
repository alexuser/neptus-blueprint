class LsCollegeRequirement < ActiveRecord::Base
  belongs_to :course
  attr_accessible :arts_and_literature, :biological_science, :course_id, :foreign_language_breadth, :historical_studies, :international_studies, :philosophy_and_values, :physical_science, :quantitative_reasoning, :reading_and_composition, :social_and_behavioral_sciences

  # This method takes a hash and a user object 
  # And it will set the requirements based on the user object
  def self.set_requirements(completed_requirements, user) 
  	completed_requirements[:arts_and_literature] = user[:arts_and_literature]
  	completed_requirements[:biological_science] = user[:biological_science];
  	completed_requirements[:foreign_language_breadth] = user[:foreign_language_breadth]
  	completed_requirements[:historical_studies] = user[:historical_studies]
  	completed_requirements[:international_studies] = user[:international_studies]
  	completed_requirements[:philosophy_and_values] = user[:philosophy_and_values]
  	completed_requirements[:physical_science] = user[:physical_science]
  	completed_requirements[:quantitative_reasoning] = user[:quantitative_reasoning]
  	completed_requirements[:reading_and_composition] = user[:reading_and_composition]
  	completed_requirements[:social_and_behavioral_sciences] = user[:social_and_behavioral_sciences]
  end 
end
