Feature3: We recommand courses for choosing major and college 
  As a new user
  So that I can start editing my blueprint
  I want to enter the profile page after I click start button


BackGround: Courses have been added to database.

  Given the following accounts existed:
  |college name  |related major   |
  |L&S           |Computer Science|

  And I am on the welcome page

Scenario: choosing specific college and related major should see sepecific course names
  When I select "College of Letter and Science" from "user_college_id"
  
  And I select "Computer Science" from "major_id" 
  
  And I press "next"

  Then I should be on profile page

Scenario: missing either college or related major
  When I select "College of Letter and Science" from "user_college_id"

  And I press "next"

  Then I should be on welcome page

  Then I should see "Please select related major."
