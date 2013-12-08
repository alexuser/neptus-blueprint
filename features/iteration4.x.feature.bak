Feature: Requirement progress check
	As a student 
	So that I can find out how much I have fulfilled the reqirements
	I want to be able to see the percentage that I have done
	
Background: I am on the profile page
	Given I am on the home page
	And I am signed up
	Then I go to the profile page

Scenario: Check writing requirement
	Given I am on the profile page
	And I check "requirements_entry_level_writing"
	And I press "Save"
	Then I should see "50"

Scenario: Check university requirement
	Given I am on the profile page
	And I check "requirements_entry_level_writing"
	And I check "requirements_american_history_and_institutions"
	And I press "Save"
	Then I should see "100"

Scenario: Check college requirement
	Given I am on the profile page
	And I check "requirements_american_cultures"
	And I press "Save"
	Then I should see "100"

Scenario: Check art and literature requirement
	Given I am on the profile page
	And I check "requirements_arts_and_literature"
	And I press "Save"
	Then I should see "14"

Scenario: Check seven breadth requirement
	Given I am on the profile page
	And I check "requirements_arts_and_literature"
	And I check "requirements_biological_science"
	And I check "requirements_historical_studies"
	And I check "requirements_international_studies"
	And I check "requirements_philosophy_and_values"
	And I check "requirements_physical_science"
	And I check "requirements_social_and_behavioral_sciences"
	And I press "Save"
	Then I should see "70"

Scenario: Check ls requirement
	Given I am on the profile page
	And I check "requirements_reading_and_composition"
	And I check "requirements_quantitative_reasoning"
	And I check "requirements_foreign_language_breadth"
	And I check "requirements_arts_and_literature"
	And I check "requirements_biological_science"
	And I check "requirements_historical_studies"
	And I check "requirements_international_studies"
	And I check "requirements_philosophy_and_values"
	And I check "requirements_physical_science"
	And I check "requirements_social_and_behavioral_sciences"
	And I press "Save"
	Then I should see "100"
	
Scenario: Check CS 61A and CS 61B requirements
	Given I am on the profile page
	And I check "requirements_cs_sixtyonea"
	And I check "requirements_cs_sixtyoneb"
	And I check "requirements_cs_sixtyoneb"
	And I press "Save"
	Then I should see "4"

Scenario: Check all lower requirements
	Given I am on the profile page
	And I check "requirements_cs_sixtyonea"
	And I check "requirements_cs_sixtyoneb"
	And I check "requirements_cs_sixtyonec"
	And I check "requirements_math_onea"
	And I check "requirements_math_oneb"
	And I check "requirements_math_fiftyfour"
	And I check "requirements_cs_seventy"
	And I check "requirements_ee_twenty"
	And I check "requirements_ee_fourty"
	And I check "requirements_ee_fourtytwo"
	And I press "Save"
	Then I should see "45"

Scenario: Check all Major Requirement Courses
	Given I am on the profile page
	And I check "requirements_cs_sixtyonea"
	And I check "requirements_cs_sixtyoneb"
	And I check "requirements_cs_sixtyonec"
	And I check "requirements_math_onea"
	And I check "requirements_math_oneb"
	And I check "requirements_math_fiftyfour"
	And I check "requirements_cs_seventy"
	And I check "requirements_ee_twenty"
	And I check "requirements_ee_fourty"
	And I check "requirements_ee_fourtytwo"
	And I check "requirements_cs_conefourtynine"
	And I check "requirements_cs_oneseventy"
	And I check "requirements_cs_onesixtytwo"
	And I check "requirements_cs_onefifty"
	And I check "requirements_cs_onefiftytwo"
	And I check "requirements_cs_onesixty"
	And I check "requirements_cs_onesixtyone"
	And I check "requirements_cs_onesixtyfour"
	And I check "requirements_cs_onesixtynine"
	And I check "requirements_cs_oneeightyfour"
	And I check "requirements_cs_oneeightysix"
	And I check "requirements_cs_oneeightyeight"
	And I check "requirements_cs_conefourtynine"
	And I press "Save"
	Then I should see "100"


