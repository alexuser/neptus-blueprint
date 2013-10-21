Feature1: Registered user can login.
  As a registered user,
  So that I can login using my registered account,
  I want to see whether I successfully logged in or not.

BackGround: Accounts have been added to database.

  Given the following accounts existed:
  |username |password |
  |kevinliu |123456   |
  |jinbaobao|1234567  |

  And I am on the welcome page

Scenario: signed in with correct user name and password
  When I enter "kevinliu" as "username"
  And I enter "123456" as "password"
  
  And I press "login"

  Then I should see "kevin logged in."

Scenario: signed in with correct user name and incorrect password
  When I enter "kevinliu" as "username"
  And I enter "1234567"

  And I press "login"

  Then I should see "Wrong password."

Scenario: signed in with incorrect user name
  When I enter "kevinliu111" as "username"
  And I enter "1234567"

  And I press "login"

  Then I should see "User name not exist."
