class ProfilepageController < ApplicationController
 before_filter :authenticate_user!

    def index
        @user = current_user

        if (params[:requirements].present?) # user makes some changes to the requirements         
            CampusRequirement.set_requirements(@user, params[:requirements])
            LsCollegeRequirement.set_requirements(@user, params[:requirements])
            UniversityRequirement.set_requirements(@user, params[:requirements])
            @user.save
            flash[:notice] = "Your requirements have been successfully saved"
        end 

        @university_req_rate = UniversityRequirement.progress(@user)
        @campus_req_rate = CampusRequirement.progress(@user)
        @ls_college_req_rate = LsCollegeRequirement.progress(@user)
    
    end

    def report
        @user = current_user
        @course_ids = []
        @courses = []

        UniversityRequirement.get_courses(@user).each {|course_id| @course_ids << course_id}
        CampusRequirement.get_courses(@user).each {|course_id| @course_ids << course_id}
        LsCollegeRequirement.get_courses(@user).each {|course_id| @course_ids << course_id}

        @course_ids.each {|course| @courses << Course.find_by_id(course.course_id)}
    end 
end
