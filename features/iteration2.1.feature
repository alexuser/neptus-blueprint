Feature: track requirements progress

As a college student, after visit my profile page
So that I can see what courses I need to fulfill my requirements, including university and campus requirements progress and college requirements
I want to be able to click on the University button or college button and be shown a list of courses that fulfill the requirements with a check box next to each one so I can keep track of my progress

Background: Courses have been added to database.

<<<<<<< HEAD
Given I am on profilepage

Scenario: see how much the user have fulfilled the university requirements
        When I press University Requirement

        Then I should see the "Entry-Level Writing Satisfied" check box

        And I should see the "American History and Institutions Satisfied" check box

Scenario: see if the user have fulfilled the campus requirement
        When I click on the "Campus Requirement"

        Then I should see the "American Cultures Satisfied" check box


Scenario: see how much the user have fulfilled the College requirement
        When I click on the "College Requirement"

        Then I shold see the "Reading & Composition Requirements Satisfied" check box

        And I shold see the "Quantitative Reasoning Requirements Satisfied" check box

        And I shold see the "Foreign Language Requirements Satisfied" check box

        And I shold see "Seven Breath Requirements"

        And I shold see the "Arts and Literature Satisfied" check box

        And I shold see the "Biological Science Satisfied" check box

        And I shold see the "Historical Studies Satisfied" check box
=======

  Given I am on the major select welcome page
  And I am signed up

Scenario: see how much the user have fulfilled the university requirements

  Then I should see "University Requirements"

	When I follow "University Requirements"

	Then I should see "Entry-Level Writing Satisfied" 

	And I should see the "American History and Institutions Satisfied"

Scenario: see if the user have fulfilled the campus requirement
	When I click on the "Campus Requirement"

	Then I should see the "American Cultures Satisfied" 


Scenario: see how much the user have fulfilled the College requirement
	When I click on the "College Requirement"

	Then I shold see the "Reading & Composition Requirements Satisfied" 

	And I shold see the "Quantitative Reasoning Requirements Satisfied" 

	And I shold see the "Foreign Language Requirements Satisfied"

	And I shold see "Seven Breath Requirements"

	And I shold see the "Arts and Literature Satisfied" 

	And I shold see the "Biological Science Satisfied" 

	And I shold see the "Historical Studies Satisfied"

	And I shold see the "International Studies Satisfied" 

	And I shold see the "Philosophy and Values Satisfied" 

	And I shold see the "Physical Science Satisfied" 

	And I shold see the "Social and Behavioral Sciences Satisfied" 
>>>>>>> 0592f2f644b1fa433d83742ae1b96ae1dcde31f2

        And I shold see the "International Studies Satisfied" check box

        And I shold see the "Philosophy and Values Satisfied" check box

        And I shold see the "Physical Science Satisfied" check box

        And I shold see the "Social and Behavioral Sciences Satisfied" check box
