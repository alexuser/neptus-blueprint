class UniversityRequirement < ActiveRecord::Base
  belongs_to :course
  attr_accessible :american_history_and_institutions, :course_id, :entry_level_writing
end
