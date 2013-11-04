Feature: be able to check college requirements

As a college student
So that I can fulfill my college requirements
I want to be shown the classes I have taken out of all courses that fulfill college requirements 

Background: I am on the college requirements page

	Then I should see "Reading & Composition Requirements"
	Then I should see "Quantitative Reasoning Requirements"
	Then I should see "Foreign Language Requirements"
	Then I should see "Breath Requirements"

Scenario: fulfill R&C requirements 

	When I check the "Reading & Composition Satisfied" checkbox
	And I press "Save"
	Then I should see "You have completed your R&C requirements"
	
	When I uncheck the "Reading & Composition Satisfied" checkbox
	And I press "Save"
	Then I should see "You have not completed your R&C requirements"


Scenario: fulfill quantitative reasoning requirements
	When I check the "Quantitative Reasoning Satisfied" checkbox
	And I press "Save"
	Then I should see "You have completed your Quantitative Reasoning requirements"
	
	When I uncheck the "Quantitative Reasoning Satisfied" checkbox
	And I press "Save"
	Then I should see "You have not completed your Quantitative Reasoning"
    

Scenario: fulfill foreign language requirements
	When I check the "Foreign Language Satisfied" checkbox
	And I press "Save"
	Then I should see "You have completed your Foreign Language requirements"

	When I uncheck the "Foreign Language Satisfied" checkbox
	And I press "Save"
	Then I should see "You have not completed your Foreign Language"

	
Scenario: fulfill arts and Literature requirements
	When I check the "Arts and Literature Satisfied" checkbox
	And I press "Save"
	Then I should see "You have completed your Arts and Literature requirements"

	When I uncheck the "Arts and Literature Satisfied" checkbox
	And I press "Save"
	Then I should see "You have not completed your Arts and Literature requirements"


Scenario: fulfill Biological Science requirements
	When I check the "Biological Science Satisfied" checkbox
	And I press "Save"
	Then I should see "You have completed your Biological Science requirements"

	When I uncheck the "Biological Science Satisfied" checkbox
	And I press "Save"
	Then I should see "You have not completed your Biological Science requirements"

	
Scenario: fulfill Biological Science requirements
	When I check the "Biological Science Satisfied" checkbox
	And I press "Save"
	Then I should see "You have completed your Biological Science requirements"

	When I uncheck the "Biological Science Satisfied" checkbox
	And I press "Save"
	Then I should see "You have not completed your Biological Science requirements"
	
Scenario: fulfill Historical Studies requirements
	When I check the "Historical Studies Satisfied" checkbox
	And I press "Save"
	Then I should see "You have completed your Historical Studies requirements"

	When I uncheck the "Historical Studies Satisfied" checkbox
	And I press "Save"
	Then I should see "You have not completed your Historical Studies requirements"
	
Scenario: fulfill Philosophy and Values requirements
	When I check the "Philosophy and Values Satisfied" checkbox
	And I press "Save"
	Then I should see "You have completed your Philosophy and Values requirements"

	When I uncheck the "Philosophy and Values Satisfied" checkbox
	And I press "Save"
	Then I should see "You have not completed your Philosophy and Values requirements"
	
Scenario: fulfill Physical Science requirements
	When I check the "Physical Science Satisfied" checkbox
	And I press "Save"
	Then I should see "You have completed your Physical Science requirements"

	When I uncheck the "Physical Science Satisfied" checkbox
	And I press "Save"
	Then I should see "You have not completed your Physical Science requirements"	

Scenario: fulfill Social and Behavioral Sciences requirements
	When I check the "Social and Behavioral Sciences Satisfied" checkbox
	And I press "Save"
	Then I should see "You have completed your Social and Behavioral Sciences requirements"

	When I uncheck the "Social and Behavioral Sciences Satisfied" checkbox
	And I press "Save"
	Then I should see "You have not completed your Social and Behavioral Sciences requirements"




	

