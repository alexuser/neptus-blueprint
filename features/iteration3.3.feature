Feature: Requirements Page

As a student 
So that I can select classes to fulfill my requirements
I would like to have a page that displays requirements that I need to complete along with drop down lists for each requirement.

Background: User is logged in and on the profile page
        Given I am on the home page
        And I am signed up

Scenario: Entry Level Writing Requirement Fulfilled
        And I check "requirements_entry_level_writing"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "Entry Level Writing 1A"
        And I should not see "Entry Level Writing 1B"

Scenario: American History and Institutions Requirement Fulfilled
        And I check "requirements_american_history_and_institutions"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "History 131A"
        And I should not see "History 131B"

Scenario: American Cultures Requirement Fulfilled
        And I check "requirements_american_cultures"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "American Cultures 1A"
        And I should not see "American Cultures 1B"
        And I should see "Greek 105"

Scenario: Reading & Composition Requirement Fulfilled
        And I check "requirements_reading_and_composition"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "Reading and Composition 1A"
        And I should not see "Reading and Composition 1B"
        And I should see "German 142"

Scenario: Quantitative Reasoning Requirement Fulfilled
        And I check "requirements_quantitative_reasoning"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "Quantitative Reasoning 1A"
        And I should not see "Quantitative Reasoning 1B"
        And I should see "German 142"

Scenario: Arts and Literature Requirement Fulfilled
        And I check "requirements_arts_and_literature"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "Arts and Literature 1A"
        And I should not see "Arts and Literature 1B"
        And I should see "History 131B"

Scenario: Biological Science Requirement Fulfilled
        And I check "requirements_biological_science"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "Biological Science 1A"
        And I should not see "Biological Science 1B"
        And I should see "Greek 100"

Scenario: Historical Studies Requirement Fulfilled
        And I check "requirements_historical_studies"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "Historical Studies 1A"
        And I should not see "Historical Studies 1B"
        And I should see "German 100"

Scenario: International Studies Requirement Fulfilled
        And I check "requirements_international_studies"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "International Studies 1A"
        And I should not see "International Studies 1B"
        And I should see "Chinese 183"

Scenario: Philosophy and Values Requirement Fulfilled
        And I check "requirements_philosophy_and_values"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "Philosophy and Values 1A"
        And I should not see "Philosophy and Values 1B"
        And I should see "Linguistics 106"

Scenario: Physical Science Requirement Fulfilled
        And I check "requirements_physical_science"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "Physical Science 1A"
        And I should not see "Physical Science 1B"
        And I should see "German 142"

Scenario: Social and Behavioral Sciences Requirement Fulfilled
        And I check "requirements_social_and_behavioral_sciences"
        And I press "Save"
        
        Then I go to the report page
        And I should not see "Social and Behavioral Sciences 1A"
        And I should not see "Social and Behavioral Sciences 1B"
        And I should see "German 176"
