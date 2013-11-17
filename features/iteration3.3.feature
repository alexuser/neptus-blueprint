Feature: Requirements Page

As a student 
So that I can select classes to fulfill my requirements
I would like to have a page that displays requirements that I need to complete along with drop down lists for each requirement.

Background: User is logged in and on the profile page
        Given I am on the profile page
        
Scenario: Writing Requirement Not Fulfilled
        When I follow "University Requirements"
        And I check "requirements_american_history_and_institutions"
        And I follow "Campus Requirements"
        And I check "requirements_American_Cultures"
        And I follow "L&S requirements"
        And I check "requirements_quantitative_reasoning_requirements"
        And I check "requirements_foreign_language_requirements"
        
        And I check "requirements_arts_and_literature"

        And I check "requirements_historical_studies"

        And I check "requirements_philosophy_and_values"

        And I check "requirements_physical_science"
        
        And I press "Save"
        
        Then I go to the "Requirements Page"
        
        Then I should see "African American Studies 4A: american_history_and_institutions arts_and_literature historical_studies "

        And I should see "Letters and Science 123: arts_and_literature historical_studies philosophy_and_values"

        And I should see "German 176: arts_and_literature historical_studies philosophy_and_values"

        And I should see "South Asian 151: historical_studies philosophy_and_values"

        And I should see "French 145: arts_and_literature historical_studies"
