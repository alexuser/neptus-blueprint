Feature: generate blueprint

As a college student
So that I can see what classes I need to take to fulfill certain requirements
I need a filter which can show me courses that fulfill more than one requirements

Background: The user has created a profile, and now he or she wants to see what kind of classes he or she needs to take to fulfill requirements given their inputs.

  Given I am on the major select welcome page
  And I am signed up

 Scenario: user can see requirement joint courses after checked requirements and pressed Save button
 	When I follow "Campus Requirement"

 	And I check "requirements_american_cultures"

 	And I follow "L&S College Requirements"

 	And I check "requirements_arts_and_literature"

 	And I check "requirements_historical_studies"

 	And I check "requirements_philosophy_and_values"

 	And I check "requirements_physical_science"

 	And I press "Save"

 	Then I should see "["arts_and_literature", "historical_studies", "philosophy_and_values"] Letters and Science 123:"

 	And I should see "["arts_and_literature", "historical_studies", "philosophy_and_values"] German 176:"

 	And I should see "["historical_studies", "philosophy_and_values"] Portuguese 39A:"

 	When I follow "L&S College Requirements"

 	And I check "requirements_quantitative_reasoning_requirements"

 	And I check "requirements_biological_science"

 	And I check "requirements_international_studies"

 	And I uncheck "requirements_philosophy_and_values"

 	And I uncheck "requirements_physical_science"	

 	And I press "Save"

 	Then I should see "["arts_and_literature", "historical_studies"]" African American Studies 5A:

 	And I should see "["arts_and_literature", "historical_studies"]" South Asian 110A:

 	And I should see "["arts_and_literature", "international_studies"]" Slavic 39H:

