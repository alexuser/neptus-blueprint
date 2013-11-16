Feature: Major Requirements

As a student
So that I can fulfill my major requirements
I want to see the courses I need to take in a graphical format to display to help me complete my major requirements.

Background: I'm already signed in and have a profile I can save to

Given I am on the profile page

Scenario: Finish "CS 61A"
	Given the "CS 61A" button is "gray"
	When I press the "CS 61A" button
	Then the "CS 61A" button should be "green"
	
Scenario: Finish "CS 61B"
	Given the "CS 61B" button is "gray"
	When I press the "CS 61B" button
	Then the "CS 61B" button should be "green"
	
Scenario: Finish "CS 61C"
	Given the "CS 61C" button is "gray"
	When I press the "CS 61C" button
	Then the "CS 61C" button should be green"
	
Scenario: Finish "Math 1A"
	Given the "Math 1A" button is "gray"
	When I press the "Math 1A" button
	Then the "Math 1A" button should be "green"

Scenario: Finish "Math 1B"
	Given the "Math 1B" button is "gray"
	When I press the "Math 1B" button
	Then the "Math 1B" button should be "green"
	
Scenario: Finish Math 54
	Given the "Math 54" button is "gray"
	When I press the "Math 54" button
	Then the "Math 54" button should be "green"
	
Scenario: Finish CS 70
	Given the "CS 70" button is "gray"
	When I press the "CS 70" button
	Then the "CS 70" button should be "green"
	
Scenario: Finish EE Requirement with EE 20
	Given the "EE 20 "button is "gray"
	And the "EE 40" button is "gray"
	And the "EE 42" button is "gray"
	When I press "EE 20" button
	Then the "EE 20" button should be "green"
	And the "EE 40" button should be "white"
	And the "EE 42" button should be "white"
	
Scenario: Finish EE Requirement with EE 40
	Given the "EE 20" button is "gray"
	And the "EE 40" button is "gray"
	And the "EE 42" button is "gray"
	When I press "EE 40" button
	Then the "EE 40" button should be "green"
	And the "EE 20" button should be "white"
	And the "EE 42" button should be "white"
	
Scenario: Finish EE Requirement with "EE 42"
	Given the "EE 20" button is "gray"
	And the "EE 40" button is "gray"
	And the "EE 42" button is "gray"
	When I press "EE 42" button
	Then the "EE 42" button should be "green"
	And the "EE 20" button should be "white"
	And the "EE 40" button should be "white"
	
Scenario: Fulfill Design Breadth with CS 160
	Given the "CS 160" button is "gray"
	When I press the "CS 160" button
	Then the "CS 160" button should be "green"
	And I should see "Design Breadth Completed"
	
Scenario: Fulfill 20 Unit upper division CS courses with CS 160, 162, 169, 184, 186
	Given the "CS 160" button is "gray"
	And the "CS 162" button is "gray"
	And the "CS 169" button is "gray"
	And the "CS 184" button is "gray"
	And the "CS 186" button is "gray"
	When I press the "CS 162" button
	And I press the "CS 160" button
	And I Press the "CS 169" button
	And I press the "CS 184" button
	And I press the "CS 186" button
	Then I should see "20 Unit Upper Division CS Requirement Completed"
	And the "CS 160" button should be "green"
	And the "CS 162" button should be "green"
	And the "CS 169" button should be "green"
	And the "CS 184" button should be "green"
	And the "CS 186" button should be "green"
	
Scenario: Fulfill the Technical Electives courses to get 27 upper division units
	Given the "CS 160" button is "gray"
	And the "CS 162" button is "gray"
	And the "CS 169" button is "gray"
	And the "CS 184" button is "gray"
	And the "CS 186" button is "gray"
	And the "CS 170" button is "gray"
	And the "CS 150" button is "gray"
	When I press the "CS 162" button
	And I press the "CS 160" button
	And I Press the "CS 169" button
	And I press the "CS 184" button
	And I press the "CS 186" button
	And I press the "CS 170" button
	And I press the "CS 150" button
	Then I should see "20 Unit Upper Division CS Requirement Completed"
	And I should see "27 Unit Upper Division including Tech Electices Completed"
	And the "CS 160" button should be "green"
	And the "CS 162" button should be "green"
	And the "CS 169" button should be "green"
	And the "CS 184" button should be "green"
	And the "CS 186" button should be "green"
	And the "CS 170" button should be "green"
	And the "CS 150" button should be "green"
	
	



