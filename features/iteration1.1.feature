Feature1: Registered user can login.
  As a registered user,
  So that I can login using my registered account,
  I want to see whether I successfully logged in or not.

BackGround: Accounts have been added to database.

  Given the following accounts existed:
  |email                   |password |
  |kevinliu@berkeley.edu   |123456   |
  |jinbaobao@berkeley.edu  |1234567  |

  And I am on the welcome page

Scenario: signed in with correct user name and password
  When I fill in "kevinliu@berkeley.edu" for "username"
  And I fill in "123456" for "password"
  
  And I press "Sign in"

  Then I should see "kevin signed in."

Scenario: signed in with correct user name and incorrect password
  When I fill in "kevinliu@berkeley.edu" for "username"
  And I fill in "1234567" for "password"

  And I press "Sign in"

  Then I should see "Wrong password."

Scenario: signed in with incorrect user name
  When I fill in  "kevinliu111@berkeley.edu" for "username"
  And I fill in "1234567" for "password"

  And I press "Sign in"

  Then I should see "User name not exist."
