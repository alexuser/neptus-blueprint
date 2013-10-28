class MajorSelectController < ApplicationController
  def welcome
  	if user_signed_in?
  		redirect_to :controller=>'profilepage', :action => 'index'
  	end
  end
  
  def update_majors
    @majors = Major.where("college_id = #{params[:college_id]}")

    render :partial => "majors", :locals => {:object => @majors}
    
  end
end
