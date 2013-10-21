Feature3: We recommand courses for choosing major and college 
  As a user
  So that I can choose my major and college
  I want to see what courses I might like

BackGround: Courses have been added to database.

  Given the following accounts existed:
  |coursename  |college name  |related major   |
  |software eng|L&S           |Computer Science|

  And I am on the welcome page

Scenario: choosing specific college and related major should see sepecific course names
  When I choose "L&S" as "college"
  And I choose "Computer Science"
  
  And I press "next"

  Then I should be directed to "profile page"

Scenario: missing either college or related major
  When I choose "L&S" as "college"

  And I press "login"

  Then I should see "Please select related major."
