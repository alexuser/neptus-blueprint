Feature: Save the Personal Profile

As a current user
So that I can save my personal information and my blueprints
I want to be able to save my settings such as my year, major, course history, etc. so I don't have to re-enter my information again and again.

Background: User is already logged in

        Given I am on the edit profile page
        
Scenario: update name
        When I fill in user_name with "New Name"
        And I press save
        Then I should be on the Profile page
        And I should see "New Name"
        
Scenario: update college
        When I fill in college_name with "New College"
        And I press save
        Then I should be on the Profile page
        And I should see "New College"
        
Scenario: update Entrance Year
        When I fill in entrance_year with "2069"
        And I press save
        Then I should be on the Profile page
        And I should see "2069"
        
Scenario: update Expected Year of Graduation
        When I fill in expected_graduation_year with "2073"
        And I press save
        Then I should be on the Profile page
        And I should see "2073"
        
Scenario: update Major
        When I fill in major with "Gender and Women's Studies"
        And I press save
        Then I should be on the Profile page
        And I should see "Gender and Women's Studies"
