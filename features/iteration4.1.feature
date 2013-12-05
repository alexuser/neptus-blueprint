Feature: Display which job outlooks

	As a prospective employee
	So that I can find a job that best suits my needs and interests
	I want to be able to see what jobs I could potentially consider and sort these results
	
	
Background: I am on the job opportunities pagee
	Given I am on the home page
	And I am signed up
	Then I go to the job opportunities page
	
Scenario: Sort by Salary 
	Given I see "Computer software engineers, applications" before "Elementary school teachers, except special education"
	When I click "Sort by Salary"
	Then I should see "Elementary school teachers, except special education" before "Computer software engineers, applications"
	Then I click "Sort by Salary"
	And I should see Given I see "Computer software engineers, applications" before "Elementary school teachers, except special education"
	
Scenario: Sort by Job Openings
	Given I see "Elementary school teachers, except special education" before "Computer software engineers, applications"
	When I click on "Sort by Openings"
	Then I should see "Computer software engineers, applications" before "Elementary school teachers, except special education"
	Then I click on "Sort by Openings"
	Then I should see "Elementary school teachers, except special education" before "Computer software engineers, applications"