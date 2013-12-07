class WelcomeController < ApplicationController
	def home
	end 

	def contact
	end 

	def about
	end 
	
	def outlook
      @graph = LazyHighCharts::HighChart.new('bar') do |f|
        f.options[:chart][:height] = 700
        f.options[:chart][:defaultSeriesType] = "bar"
        f.series(:name=>"Median Salary in $1000", :data=> [65,53,67,65,88,82,91,67,36,42,33,36])
        f.series(:name=>"Projected Growth (%)", :data => [26,17,32,17,27,62,30,37,8,0,4,0])
        f.title({:text=>"Common Careers"})
        f.subtitle(:text => 'Source: Bureau of Labor Statistics')
        f.options[:xAxis][:categories] = ['Nurse','Elementary School Teacher','Financial Planner', 'Technicial Writer','Actuary','Biomedical Engineer','Software Engineer','Audiologist','Oil Rig Worker','Military Personel','Lumberjack','Newspaper Reporter']
     end
     @byMajor = LazyHighCharts::HighChart.new('bar') do |g|
       g.options[:chart][:height] = 700
       g.options[:chart][:defaultSeriesType] = 'bar'
       g.series(:name => "Median Salary in $1000", :data =>[120,105,95,88,87,86,82,80,40,40,30])
       g.title({:text => "College Majors"})
       g.subtitle(:text => 'Source: Georgetown University')
       g.options[:xAxis][:categories] = ['Petroleum Engineering','Pharmacy Sciences','Math and Computer Science','Aerospace Engineering','Chemical Engineering','Electrical Engineering','Marine Engineering','Mechanical Engineering','Performing Arts','Social Work','Counseling Psychology']
     end
	end 
end
