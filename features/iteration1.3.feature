Feature: sign up for an account
  As a new user
  So that I can build and access my own information
  I want to sign up an account on Neptus

Background: as a new user, I opened the neptus page

Given I am on the major select welcome page

Scenario: click on Sign up button
  When I follow "Sign up"
  
  Then I am on the new user registration page

Scenario: click on Next button
  When I follow "Next"

  Then I am on the new user session page

