Feature: Reset my Password

        As a current user
        So that I can recover my login
        I want to be able to reset my password

Background: User is already logged in

        Given I am on the home page
		And I am signed up
		And I sign out

Scenario: Reset my password
		Given I follow "Sign in"
		And I follow "Forgot your password?"
