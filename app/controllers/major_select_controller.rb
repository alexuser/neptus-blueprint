class MajorSelectController < ApplicationController
  def welcome
  end
  
  def update_majors
    @majors = Major.where("college_id = #{params[:college_id]}")

    render :partial => "majors", :locals => {:object => @majors}
  end
end
