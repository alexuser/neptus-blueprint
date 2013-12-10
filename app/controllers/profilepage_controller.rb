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

    def ureport 
        @university_courses = []
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
    end

    def creport
        @campus_courses = []
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
    end

    def ls3report
        @ls_courses = []
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
    end

    def sevenbreath
        @seven_breadth = []
        category={:@arts_and_literature => :arts_and_literature,:@biological_science=>:biological_science,:@historical_studies=>:historical_studies,:@international_studies=>:international_studies,:@philosophy_and_values=>:philosophy_and_values,:@physical_science=>:physical_science,:@social_and_behavioral_sciences=>:social_and_behavioral_sciences}
        LsCollegeRequirement.get_courses(@user, true).each do |course| 
            new_course = Course.find_by_id(course.course_id)
            category.each{|key, value| new_course.instance_variable_set(key, LsCollegeRequirement.fulfill_requirement?(course, value))}
            @seven_breadth << new_course 
        end 

        if @seven_breadth.count == 0
            course = Course.create(:name => "You have fulfilled the requirement")
            category.each{|key,value| course.instance_variable_set(key, true)}
            @seven_breadth << course
        end 
    end

    def report
        @user = current_user
        @major_courses = []
        @lower_division_helper_one = []
        @lower_division = []
        @lower_division_helper_two = []
        @twenty_upper_division = []
        @upper_design = []
        @twentyseven_total_upper_division = []
        ureport

        creport

        ls3report

        sevenbreath
        MajorRequirement.get_courses(@user).each {|course| @major_courses << course}
        course = Course.create(:name => "You have fulfilled the requirement")
        
        
        class_hash = ["CS 61A", "CS 61B", "CS 61C", "Math 1A", "Math 1B", "Math 54", "CS 70", "EE 20", "EE 40", "EE 42"]
        class_hash.each do |x|
            if @major_courses.include?(Course.find_by_name(x))
               @major_courses.delete(Course.find_by_name(x))
               @lower_division << Course.find_by_name(x)
               @lower_division_helper_one << Course.find_by_name(x)
            end
        end
        
        i = @lower_division_helper_two.count
        if i < 3
            if @lower_division_helper_one == 0
                @lower_division = [] << course
            end
        end


        
        @twenty_upper_division = @major_courses
        @twentyseven_upper_division = @major_courses
        if @major_courses.count < 9
            @twenty_upper_division = [] << course
        end

        if @major_courses.count < 6
            @twentyseven_upper_division = [] << course
        end

        @major_courses.delete(Course.find_by_name("CS 161"))
        @major_courses.delete(Course.find_by_name("CS 170"))
        @major_courses.delete(Course.find_by_name("CS 188"))
        @upper_design = @major_courses
        if @upper_design.count < 9 
            @upper_design = [] << course
        end
    end 
end
