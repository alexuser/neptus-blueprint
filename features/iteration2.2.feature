Feature: a usable navigation bar

As a user
So that I can change my page easily
I want to use a navigation bar which have link to functional pages.

Background: as a user, I opened the neptus page

Given I am on the major select welcome page


Scenario: click on Neptus-print  button
  When I follow "Neptus-Blueprint"
  
  Then I am on the major select welcome page

Scenario: click on Home button
  When I follow "Home"

  Then I am on the major select welcome page



Scenario: click on My profile button
  Given I am on the major select welcome page
  
  And I am signed up

  Then I should see "My profile"
  When I follow "My profile"

  Then I am on the profilepage index page

Scenario: 
  Given I am signed up

  Then I press #{user_username} button