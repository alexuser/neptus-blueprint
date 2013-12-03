class ProfilepageController < ApplicationController
   before_filter :authenticate_user!

   def index
    @user = current_user

        if (params[:requirements].present?) # user makes some changes to the requirements         
            CampusRequirement.set_requirements(@user, params[:requirements])
            LsCollegeRequirement.set_requirements(@user, params[:requirements])
            UniversityRequirement.set_requirements(@user, params[:requirements])
            MajorRequirement.set_requirements(@user, params[:requirements])
            @user.save
            flash[:notice] = "Your requirements have been successfully saved"
        end 

        @university_req_rate = UniversityRequirement.progress(@user)
        @campus_req_rate = CampusRequirement.progress(@user)
        @ls_college_req_rate = LsCollegeRequirement.progress(@user)
        @major_req_rate = MajorRequirement.progress(@user)
        
    end

    def report
        @user = current_user

        @university_courses = []
        @campus_courses = []
        @ls_courses = []
        @seven_breadth = []
        @major_courses = []

        UniversityRequirement.get_courses(@user).each do |course|
            new_course = Course.find_by_id(course.course_id)
            new_course.instance_variable_set(:@entry_level_writing, UniversityRequirement.fulfill_requirement?(course, :entry_level_writing))
            new_course.instance_variable_set(:@american_history_and_institutions, UniversityRequirement.fulfill_requirement?(course, :american_history_and_institutions))
            @university_courses << new_course
        end 

        if @university_courses.count == 0
            course = Course.create(:name => "You have fulfilled the requirement")
            course.instance_variable_set(:@entry_level_writing, true)
            course.instance_variable_set(:@american_history_and_institutions, true)
            @university_courses << course
        end 

        CampusRequirement.get_courses(@user).each do |course| 
            new_course = Course.find_by_id(course.course_id)
            new_course.instance_variable_set(:@american_cultures, CampusRequirement.fulfill_requirement?(course, :american_cultures))
            @campus_courses << new_course
        end 

        if @campus_courses.count == 0
            course = Course.create(:name => "You have fulfilled the requirement")
            course.instance_variable_set(:@american_cultures, true)
            @campus_courses << course
        end 

        LsCollegeRequirement.get_courses(@user, false).each do |course| 
            new_course = Course.find_by_id(course.course_id)
            new_course.instance_variable_set(:@foreign_language_breadth, LsCollegeRequirement.fulfill_requirement?(course, :foreign_language_breadth))
            new_course.instance_variable_set(:@quantitative_reasoning, LsCollegeRequirement.fulfill_requirement?(course, :quantitative_reasoning))
            new_course.instance_variable_set(:@reading_and_composition, LsCollegeRequirement.fulfill_requirement?(course, :reading_and_composition))
            @ls_courses << new_course 
        end 

        if @ls_courses.count == 0
            course = Course.create(:name => "You have fulfilled the requirement")
            course.instance_variable_set(:@reading_and_composition, true)
            course.instance_variable_set(:@quantitative_reasoning, true)
            course.instance_variable_set(:@foreign_language_breadth, true)
            @ls_courses << course
        end 

        LsCollegeRequirement.get_courses(@user, true).each do |course| 
            new_course = Course.find_by_id(course.course_id)
            new_course.instance_variable_set(:@arts_and_literature, LsCollegeRequirement.fulfill_requirement?(course, :arts_and_literature))
            new_course.instance_variable_set(:@biological_science, LsCollegeRequirement.fulfill_requirement?(course, :biological_science))
            new_course.instance_variable_set(:@historical_studies, LsCollegeRequirement.fulfill_requirement?(course, :historical_studies))
            new_course.instance_variable_set(:@international_studies, LsCollegeRequirement.fulfill_requirement?(course, :international_studies))
            new_course.instance_variable_set(:@philosophy_and_values, LsCollegeRequirement.fulfill_requirement?(course, :philosophy_and_values))
            new_course.instance_variable_set(:@physical_science, LsCollegeRequirement.fulfill_requirement?(course, :physical_science))
            new_course.instance_variable_set(:@social_and_behavioral_sciences, LsCollegeRequirement.fulfill_requirement?(course, :social_and_behavioral_sciences))
            @seven_breadth << new_course 
        end 

        if @seven_breadth.count == 0
            course = Course.create(:name => "You have fulfilled the requirement")
            course.instance_variable_set(:@arts_and_literature, true)
            course.instance_variable_set(:@biological_science, true)
            course.instance_variable_set(:@historical_studies, true)
            course.instance_variable_set(:@international_studies, true)
            course.instance_variable_set(:@philosophy_and_values, true)
            course.instance_variable_set(:@physical_science, true)
            course.instance_variable_set(:@social_and_behavioral_sciences, true)
            @seven_breadth << course
        end 

        MajorRequirement.get_courses(@user).each {|course| @major_courses << course}

    end 
end
