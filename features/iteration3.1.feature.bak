Feature: Save the Personal Profile

        As a current user
        So that I can save my personal information and my blueprints
        I want to be able to save my settings such as my year, major, course history, etc. so I don't have to re-enter my information again and again.

Background: User is already logged in

        Given I am on the home page
	And I am signed up

Scenario: sign up 
        When I am on the profile page
        And I should see "Jerry"
        And I should see "College of Letter & Science"
        And I should see "Computer Science"
        And I should see "2013"
        And I should see "2016"

Scenario: update name
        When I go to the Edit Profile page
        And I fill in "user_name" with "New Name"
        And I fill in "user_current_password" with "12341234"
        And I press "Update"
        Then I should be on the user root page
        And I should see "You updated your account successfully"
        And I should see "New Name"

        When I go to the Edit Profile page
        And I fill in "user_name" with "New Name"
        And I press "Update"
        And I should not see "You updated your account successfully"
        And I should see "Current password can't be blank"
        
Scenario: update college
        When I go to the Edit profile page
        And I select "College of Chemistry" from "user_college"
        And I fill in "user_current_password" with "12341234"
        And I press "Update"
        Then I should be on the user root page
        And I should see "You updated your account successfully"
        And I should see "College of Chemistry"


        When I go to the Edit profile page
        And I select "College of Chemistry" from "user_college"
        And I press "Update"
        And I should not see "You updated your account successfully"
        And I should see "Current password can't be blank"
        
Scenario: update Entrance Year
        When I go to the Edit profile page
        And I select "2014" from "user_entrance_year_1i"
        And I fill in "user_current_password" with "12341234"
        And I press "Update"
        Then I should be on the user root page
        And I should see "You updated your account successfully"
        And I should see "2014"

        When I go to the Edit profile page
        And I select "2014" from "user_entrance_year_1i"
        And I press "Update"
        And I should not see "You updated your account successfully"
        And I should see "Current password can't be blank"


        
Scenario: update Expected Year of Graduation
        When I go to the Edit profile page
        And I select "2020" from "user_expected_year_1i"
        And I fill in "user_current_password" with "12341234"
        And I press "Update"
        Then I should be on the user root page
        And I should see "You updated your account successfully"
        And I should see "2020"

        When I go to the Edit profile page
        And I select "2020" from "user_expected_year_1i"
        And I press "Update"
        And I should not see "You updated your account successfully"
        And I should see "Current password can't be blank"
        
Scenario: update Major
        When I go to the Edit profile page
        And I select "Chemistry" from "user_major"
        And I fill in "user_current_password" with "12341234"
        And I press "Update"
        Then I should be on the user root page
        And I should see "You updated your account successfully"
        And I should see "Chemistry"

        When I go to the Edit profile page
        And I select "Chemistry" from "user_major"
        And I press "Update"
        And I should not see "You updated your account successfully"
        And I should see "Current password can't be blank"
