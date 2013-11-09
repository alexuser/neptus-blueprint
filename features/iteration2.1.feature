Feature: track university and campus requirements progress

As a college student, after I visit my profile page
So that I can see what courses I need to fulfill my university requirements
I want to be able to click on the University button and be shown a list of courses that fulfill the requirements with a radio button next to each one so I can keep track of my progress.

Background: Courses have been added to database.

Given I am on the university requirement page

Scenario: see if the user have fulfilled the college writing requirement
  When I check the "Entry-Level Writing Satisfied" checkbox 
  And I press "Save"

  Then I should see "you have fulfilled the college writing requirement"

  When I uncheck the "Entry-Level Writing Satisfied" checkbox
  And I press "Save"

  Then I should not see "you have fulfilled the college writing requirement"

Scenario: See if the user has fulfilled American History and Institutions requirement

  When I check the "American History and Institutions Satisfied" checkbox
  And I press "Save"
  Then I should see "you have fulfilled the American History and Institutions requirement"

  When I uncheck the "American History and Institutions Satisfied" checkbox
  And I press "Save"

  Then I should not see "you have not fulfilled the American History and Institutions requirement"

Scenario: See if the user has fulfilled American Cultures requirement

  When I check the "American Cultures Satisfied" checkbox
  And I press "Save"
  Then I should see "you have fulfilled the American Cultures requirement"

  When I uncheck the "American Cultures Satisfied" checkbox
  And I press "Save"

  Then I should not see "you have not fulfilled the American Cultures requirement"



