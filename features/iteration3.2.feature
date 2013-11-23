Feature: Major Requirements

        As a student
        So that I can fulfill my major requirements
        I want to see the courses I need to take in a graphical format to display to help me complete my major requirements.

Background: I'm already signed in and have a profile I can save to

        Given I am on the home page
        And I am signed up

Scenario: Finish "CS 61A"
        When I go to the profile page
        And I should see "CS 61A Requirements Satisfied"
        And I check "requirements_cs_sixtyonea"
        And I press "Save"
        Then I should see "Your requirements have been successfully saved"
        Then the "requirements_cs_sixtyonea" checkbox should be checked
        Then I go to the report page
        Then I should not see "CS 61A"
        And I should see "CS 61B"

Scenario: Finish "CS 61B"
        When I go to the profile page
        And I should see "CS 61B Requirements Satisfied"
        And I check "requirements_cs_sixtyoneb"
        And I press "Save"
        Then I go to the report page
        Then I should not see "CS 61B"
        And I should see "CS 61A"
        
Scenario: Finish "CS 61C"
        When I go to the profile page
        And I should see "CS 61C Requirements Satisfied"
        And I check "requirements_cs_sixtyonec"
        And I press "Save"
        Then I go to the report page
        Then I should not see "CS 61C"
        And I should see "CS 61A"
        
Scenario: Finish "Math 1A"
        When I go to the profile page
        And I should see "Math 1A Requirements Satisfied"
        And I check "requirements_math_onea"
        And I press "Save"
        Then I go to the report page
        Then I should not see "Math 1A"
        And I should see "CS 61A"

Scenario: Finish "Math 1B"
        When I go to the profile page
        And I should see "Math 1B Requirements Satisfied"
        And I check "requirements_math_oneb"
        And I press "Save"
        Then I go to the report page
        Then I should not see "Math 1B"
        And I should see "CS 61A"
        
Scenario: Finish Math 54
        When I go to the profile page
        And I should see "Math 54 Requirements Satisfied"
        And I check "requirements_math_fiftyfour"
        And I press "Save"
        Then I go to the report page
        Then I should not see "Math 54"
        And I should see "CS 61A"
        