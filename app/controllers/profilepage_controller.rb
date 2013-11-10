class ProfilepageController < ApplicationController
	 before_filter :authenticate_user!

	 def index
	 	@university_req_rate = 0
	 	@campus_req_rate = 0
	 	@ls_college_req_rate = 0
	 	@completed_requirements = params[:requirements] || session[:requirements] || {}
	 	@completed_requirements.each do |req|
	 		
	 		case req[0]
	 		when 'entry_level_writing'
	 		when 'american_history_and_institutions'
	 			@university_req_rate += 1
	 		when 'american_cultures'
	 			@campus_req_rate += 1
	 		when 'reading_and_Composition_requirements'
	 		when 'quantitative_reasoning_requirements'
	 		when 'foreign_language_requirements'
	 		when 'arts_and_literature'
	 		when 'biological_science'
	 		when 'historical_studies'
	 		when 'international_studies'
	 		when 'philosophy_and_values'
	 		when 'physical_science'
	 		when 'social_and_behavioral_sciences'
	 			@ls_college_req_rate += 1
	 		end
	 	end	

	 	


	 end

end
