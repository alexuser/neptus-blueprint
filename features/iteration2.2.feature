Feature: a usable navigation bar

As a user
So that I can change my page easily
I want to use a navigation bar which have link to functional pages.

Background: As a registered user, I can navigate my way around the website

  Given I am on the home page


Scenario: click on Neptus-print  button
  When I follow "Neptus Blueprint"
  
  Then I am on the home page

Scenario: click on Home button
  When I follow "Home"

  Then I am on the home page

Scenario: click on My profile button
  Given I am on the home page
  
  And I am signed up

  Then I should see "My Profile"
  When I follow "My Profile"

  Then I am on the Profile page

Scenario: Use drop down button
  Given I am signed up

  When I press "drop"

  Then I should see "jerry"

  And I should not see "alex"

  And I should see "Sign out"

  When I follow "Sign out"

  Then I am on the home page