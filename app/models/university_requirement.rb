class UniversityRequirement < ActiveRecord::Base
  belongs_to :course
  attr_accessible :american_history_and_institutions, :course_id, :entry_level_writing

  # This method takes a hash and a user object 
  # And it will set the requirements based on the user object
  def self.set_requirements(completed_requirements, user) 
  	completed_requirements[:american_history_and_institutions] = user[:american_history_and_institutions]
  	completed_requirements[:entry_level_writing] = user[:entry_level_writing]
  end 
end
