Feature: generate blueprint

As a college student
So that I can see what classes I need to take to fulfill certain requirements
I need a filter which can show me courses that fulfill more than one requirements

Background: The user has created a profile, and now he or she wants to see what kind of classes he or she needs to take to fulfill requirements given their inputs.



  Given I am on the major select welcome page
  And I am signed up

 Scenario: user can see requirement joint courses after checked requirements and pressed Save button
 	When I follow "University Requirements"
 	And I check "requirements_american_history_and_institutions"
 	And I follow "Campus Requirement"
 	And I check "requirements_american_cultures"
 	And I follow "L&S College Requirements"
 	And I check "requirements_quantitative_reasoning_requirements"
 	And I check "requirements_foreign_language_requirements"

 	And I check "requirements_arts_and_literature"

 	And I check "requirements_historical_studies"

 	And I check "requirements_philosophy_and_values"

 	And I check "requirements_physical_science"

 	And I press "Save"

 	Then I should see "African American Studies 4A: american_history_and_institutions arts_and_literature historical_studies "

 	And I should see "Letters and Science 123: arts_and_literature historical_studies philosophy_and_values"

 	And I should see "German 176: arts_and_literature historical_studies philosophy_and_values"
 
 	And I should see "South Asian 151: historical_studies philosophy_and_values"

 	And I should see "French 145: arts_and_literature historical_studies"
























