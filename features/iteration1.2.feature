Feature2: college and related majors should match 
  As a L&S student
  So that I can choose my major CS
  I want to see what courses I might like

BackGround: Courses have been added to database.

  Given the following majors existed:
  |college name  |related major   |
  |L&S           |Computer Science|

  And I am on the welcome page

Scenario: choosing specific major
  When I select "College of Letter and Science" from "user_college_id"

  Then I should see "Computer Science" within "major_id"

  And I should not see "EECS" within "major_id"
