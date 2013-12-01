Feature: Display class prerequisites

	As a student 
	So that I can find out prerequisites for classes
	I want to be able to see which prerequisites exist for each class
	
Background: I am on the profile page
	Given I am on the home page
	And I am signed up
	Then I go to the profile page
	
Scenario: Check 61B requirements
	Given I am on the profile page
	And I click "CS 61B"
	Then I should see "CS 61A"
	And I should see "E 7"
	
Scenario: Check 61C requirements
	Given I am on the profile page
	And I click "CS 61C"
	Then I should see "CS 61B"
	And I should see "CS 61A"

Scenario: Check 61A requirements
	Given I am on the profile page
	And I click on "CS 61A"
	Then I should see "Math 1A"
	
Scenario: Check 1B requirements
	Given I am on the profile page
	And I click on "Math 1B"
	Then I should see "Math 1A"
	
Scenario: Check Math 54 requirements
	Given I am on the profile page
	And I click on "Math 54"
	Then I should see "Math 1B"
	
Scenario: Check EE 20 requirements
	Given I am on the profile page
	And I click on "EE 20"
	Then I should see "Math 1B"
	
Scenario: Check EE 40 requirements
	Given I am on the profile page
	And I click on "EE 40"
	Then I should see "Math 1B"
	
Scenario: Check EE 42 requirements
	Given I am on the profile page
	And I click on "EE 42"
	Then I should see "Math 1B"

Scenario: Check CS 170 requirements
	Given I am on the profile page
	And I click on "CS 170"
	Then I should see "CS 61B"
	And I should see "CS 70"
	
Scenario: Check CS 162 requirements
	Given I am on the profile page
	And I click on "CS 162"
	Then I should see "CS 61B"
	And I should see "CS 61C"
	And I should see "CS 70"

Scenario: Check CS 150 requirements
	Given I am on the profile page
	And I click on "CS 150"
	Then I should see "CS 61C"
	And I should see "EE 40"
	And I should see "EE 42"
	
Scenario: Check CS 152 requirements
	Given I am on the profile page
	And I click on "CS 152"
	Then I should see "CS 61C"
	
Scenario: Check CS 160 requirements
	Given I am on the profile page
	And I click on "CS 160"
	Then I should see "CS 61B"
	
Scenario: Check CS 161 requirements
	Given I am on the profile page
	And I click on "CS 161"
	Then I should see "CS 61C"
	And I should see "CS 70"
	And I should see "Math 55"

Scenario: Check CS 164 requirements
	Given I am on the profile page
	And I click on "CS 164"
	Then I should see "CS 61B"
	And I should see "CS 61C"	
	
Scenario: Check CS 169 requirements
	Given I am on the profile page
	And I click on "CS 169"
	Then I should see "CS 61B"
	And I should see "CS 61C"	
	And I should see "CS 70"
	And I should see "Math 113"
	
Scenario: Check CS 184 requirements
	Given I am on the profile page
	And I click on "CS 184"
	Then I should see "CS 61B"
	
Scenario: Check CS 186 requirements
	Given I am on the profile page
	And I click on "CS 186"
	Then I should see "CS 61B"
	And I should see "CS 61C"
	
Scenario: Check CS 188 requirements
	Given I am on the profile page
	And I click on "CS 188"
	Then I should see "CS 61A"
	And I should see "CS 61B"
	And I should see "CS 70"