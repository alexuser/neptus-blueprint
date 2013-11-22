class ProfilepageController < ApplicationController
     before_filter :authenticate_user!


     def index
        @user = current_user
        
        if (params[:requirements].present?) # user makes some changes to the requirements         
            CampusRequirement.set_requirements(@user, params[:requirements])
            LsCollegeRequirement.set_requirements(@user, params[:requirements])
            UniversityRequirement.set_requirements(@user, params[:requirements])
            @user.save
        end 

        @university_req_rate = UniversityRequirement.progress(@user)
        @campus_req_rate = CampusRequirement.progress(@user)
        @ls_college_req_rate = LsCollegeRequirement.progress(@user)
        
     end

     def filter(requirements)
            results = Hash.new([])
            courses = Course.all
            courses.each do |course|
                list = Array.new
                requirements.each do |requirement|
                    if course.fullfilled_requirement?(requirement)
                        list << requirement
                    end
                end
                if not list.empty?
                    results[course] = list
                end
            end
            /results.sort_by{|_key, value| -value.length}/
            return results
    end
end
