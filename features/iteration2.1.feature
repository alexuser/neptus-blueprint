Feature: track requirements progress

As a college student, after visit my profile page
So that I can see what courses I need to fulfill my requirements, including university and campus requirements progress and college requirements
I want to be able to click on the University button or college button and be shown a list of courses that fulfill the requirements with a check box next to each one so I can keep track of my progress

Background: Courses have been added to database.



  Given I am on the major select welcome page
  And I am signed up

Scenario: see how much the user have fulfilled the university requirements
	When I follow "University Requirements"

	Then I should see "Entry-Level Writing Satisfied"

  	When I check "requirements_entry_level_writing"

  	And I press "Save"

  	Then the "requirements_entry_level_writing" checkbox should be checked

	And I should see "American History and Institutions Satisfied"

	When I check "requirements_american_history_and_institutions"

	And I press "Save"

	Then the "requirements_american_history_and_institutions" checkbox should be checked

Scenario: see if the user have fulfilled the campus requirement
	When I follow "Campus Requirement"

	Then I should see "American Cultures Satisfied" 

	When I check "requirements_american_cultures"

	And I press "Save"

	Then the "requirements_american_cultures" checkbox should be checked

Scenario: see how much the user have fulfilled the College requirement
	When I follow "L&S College Requirements"

	Then I should see "Reading & Composition Requirements Satisfied" 

	And I should see "Quantitative Reasoning Requirements Satisfied" 

	And I should see "Foreign Language Requirements Satisfied"

	And I should see "Seven Breath Requirements"

	And I should see "Arts and Literature Satisfied" 

	And I should see "Biological Science Satisfied" 

	And I should see "Historical Studies Satisfied"

	And I should see "International Studies Satisfied" 

	And I should see "Philosophy and Values Satisfied" 

	And I should see "Physical Science Satisfied" 

	And I should see "Social and Behavioral Sciences Satisfied" 

	When I check "requirements_reading_and_Composition_requirements"

	And I check "requirements_quantitative_reasoning_requirements"

	And I check "requirements_foreign_language_requirements"

	And I check "requirements_arts_and_literature"

	And I check "requirements_biological_science"

	And I check "requirements_historical_studies"

	And I check "requirements_international_studies"

	And I check "requirements_philosophy_and_values"

	And I check "requirements_physical_science"

	And I check "requirements_social_and_behavioral_sciences"

	And I press "Save"

	Then the "requirements_reading_and_Composition_requirements" checkbox should be checked

	And the "requirements_quantitative_reasoning_requirements" checkbox should be checked

	And the "requirements_foreign_language_requirements" checkbox should be checked

	And the "requirements_arts_and_literature" checkbox should be checked

	And the "requirements_biological_science" checkbox should be checked

	And the "requirements_historical_studies" checkbox should be checked

	And the "requirements_international_studies" checkbox should be checked

	And the "requirements_philosophy_and_values" checkbox should be checked

	And the "requirements_physical_science" checkbox should be checked

	And the "requirements_social_and_behavioral_sciences" checkbox should be checked
