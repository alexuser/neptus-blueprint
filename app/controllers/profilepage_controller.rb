class ProfilepageController < ApplicationController
	 before_filter :authenticate_user!

	 def index
	 	@tests ='wo qu!'
	 	@completed_requirements = params[:requirements] || {}

	 	
	 	
	 end

end
