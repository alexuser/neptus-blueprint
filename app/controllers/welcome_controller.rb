class WelcomeController < ApplicationController
	def home
	end 

	def contact
	end 

	def about
	end 
	
	def outlook
      @graph = LazyHighCharts::HighChart.new('bar') do |f|
        f.export(:type => 'image/jpeg')
        f.options[:chart][:height] = 700
        f.options[:chart][:defaultSeriesType] = "bar"
        f.series(:name=>"Salary in $1000", :data=> [65,53,67,65,88,82,91,67])
        f.series(:name=>"Projected Growth (%)", :data => [26,17,32,17,27,62,30,37])
        f.title({:text=>"Career Outlook"})
        f.subtitle(:text => 'Source: Bureau of Labor Statistics')
        f.options[:xAxis][:categories] = ['Nurse','Elementary School Teacher','Financial Planner', 'Technicial Writer','Actuary','Biomedical Engineer','Software Engineer','Audiologist']
     end
	end 
end
