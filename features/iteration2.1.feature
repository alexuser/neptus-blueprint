Feature: track requirements progress

As a college student, after visit my profile page
So that I can see what courses I need to fulfill my requirements, including university and campus requirements progress and college requirements
I want to be able to click on the University button or college button and be shown a list of courses that fulfill the requirements with a check box next to each one so I can keep track of my progress

Background: Courses have been added to database.



  Given I am on the major select welcome page
  And I am signed up

Scenario: see how much the user have fulfilled the university requirements

	When I follow "University Requirements"
	Then I should see "Entry-Level Writing Satisfied" 
  When I check "requirements_entry_level_writing"
  And I press "Save"
  Then the "requirements_entry_level_writing" checkbox should be checked

	And I should see "American History and Institutions Satisfied"

Scenario: see if the user have fulfilled the campus requirement
	When I follow "Campus Requirement"

	Then I should see "American Cultures Satisfied" 


Scenario: see how much the user have fulfilled the College requirement
	When I follow "L&S College Requirements"

	Then I should see "Reading & Composition Requirements Satisfied" 

	And I should see "Quantitative Reasoning Requirements Satisfied" 

	And I should see "Foreign Language Requirements Satisfied"

	And I should see "Seven Breath Requirements"

	And I should see "Arts and Literature Satisfied" 

	And I should see "Biological Science Satisfied" 

	And I should see "Historical Studies Satisfied"

	And I should see "International Studies Satisfied" 

	And I should see "Philosophy and Values Satisfied" 

	And I should see "Physical Science Satisfied" 

	And I should see "Social and Behavioral Sciences Satisfied" 