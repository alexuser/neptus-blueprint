Feature: college and related majors should match 
  As a L&S student
  So that I can choose my major CS
  I want to see what courses I might like

Background: Courses have been added to database.

  Given the following colleges existed
  |name                         |
  |College of Letter & Science  |
  |Haas School of Business      |
  |College of Chemistry         |
  |Graduate School of Education |

  Given the following majors existed
  |name     |college_id|
  |Chinese  |1         |
  |CS       |1         |
  |Chemistry|3         |
  |Chem E   |3         |


  And I am on the major select welcome page

Scenario: choosing specific major
  When I select "College of Letter & Science" from "user_college_id"

  Then I should see "CS" in "_major_id"

  And I should not see "EECS" in "_major_id"
