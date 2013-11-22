class UniversityRequirement < ActiveRecord::Base
  belongs_to :course
  attr_accessible :american_history_and_institutions, :course_id, :entry_level_writing

  # This method takes a hash and a user object 
  # And it will set the requirements based on the user object
  def self.set_requirements(output_requirements, input_requirements) 
  	output_requirements[:american_history_and_institutions] = input_requirements[:american_history_and_institutions]
  	output_requirements[:entry_level_writing] =               input_requirements[:entry_level_writing]
  end 
end
