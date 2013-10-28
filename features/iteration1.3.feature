Feature: sign up for an account
  As a new user
  So that I can build and access my own information
  I want to sign up an account on Neptus

Background: I open the index page.

And I am on the major select welcome page

Scenario: click on sign up button
  When I press "Sign up"
  
  Then I am on the new user registration page

Scenario: click on Next button
  When I go to "Next"

  Then I am on the new user session page

  When I press "Sign up"
  
  Then I am on the new user registration page