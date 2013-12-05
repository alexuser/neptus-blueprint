Feature: generate blueprint

	As a college student
	So that I can see what classes I need to take to fulfill certain requirements
	I need a filter which can show me courses that fulfill more than one requirements

Background: The user has created a profile, and now he or she wants to see what kind of classes he or she needs to take to fulfill requirements given their inputs.

  Given I am on the home page
  And I am signed up

 Scenario: the user can see the progress of his or her requirements.
 	When I go to the profile page
 	
 	And I check "requirements_american_history_and_institutions"
 	
 	And I check "requirements_american_cultures"

 	And I check "requirements_quantitative_reasoning"
 	And I check "requirements_arts_and_literature"
 	And I check "requirements_historical_studies"
 	And I check "requirements_physical_science"

 	And I press "Save"
	

	























