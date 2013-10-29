class Major < ActiveRecord::Base
  belongs_to :college
  attr_accessible :college_id, :name
end
