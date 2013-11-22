class LsCollegeRequirement < ActiveRecord::Base
  belongs_to :course
  attr_accessible :arts_and_literature, :biological_science, :course_id, :foreign_language_breadth, :historical_studies, :international_studies, :philosophy_and_values, :physical_science, :quantitative_reasoning, :reading_and_composition, :social_and_behavioral_sciences

  # This method takes a hash and a user object 
  # And it will set the requirements based on the user object
  def self.set_requirements(output_requirements, input_requirements) 
  	output_requirements[:arts_and_literature] =            input_requirements[:arts_and_literature]
  	output_requirements[:biological_science] =             input_requirements[:biological_science];
  	output_requirements[:foreign_language_breadth] =       input_requirements[:foreign_language_breadth]
  	output_requirements[:historical_studies] =             input_requirements[:historical_studies]
  	output_requirements[:international_studies] =          input_requirements[:international_studies]
  	output_requirements[:philosophy_and_values] =          input_requirements[:philosophy_and_values]
  	output_requirements[:physical_science] =               input_requirements[:physical_science]
  	output_requirements[:quantitative_reasoning] =         input_requirements[:quantitative_reasoning]
  	output_requirements[:reading_and_composition] =        input_requirements[:reading_and_composition]
  	output_requirements[:social_and_behavioral_sciences] = input_requirements[:social_and_behavioral_sciences]
  end 
end
