Feature2: college and related majors should match 
  As a L&S student
  So that I can choose my major CS
  I want to see what courses I might like

BackGround: Courses have been added to database.

  Given the following accounts existed:
  |coursename  |college name  |related major   |
  |software eng|L&S           |Computer Science|

  And I am on the welcome page

Scenario: choosing specific college
  When I choose "L&S" as "college"
  And I press "related major"

  Then I should see "Computer Science"
  And I should not see "EECS"
