class WelcomeController < ApplicationController
	def home
	end 

	def contact
	end 

	def about
	end 
	
	def outlook
    @graph = LazyHighCharts::HighChart.new('bar') do |f|
      f.options[:chart][:defaultSeriesType] = "bar"
      f.series(:name=>"Salary", :data=> [100,12,30])
      f.series(:name=>"Openings", :data => [10,1,3])
      f.title({:text=>"Job Outlook"})
      f.subtitle(:text => 'Source: Wikipedia.org')
       

      f.options[:xAxis][:categories] = ['Software Engineer','Teacher','Laywer']
      f.options[:yAxis][:title][:text] = 'Salary ($)' 
     end
	end 
end
