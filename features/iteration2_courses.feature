Feature: generate blueprint

As a college student, I want to see what classes I need to take to fulfill certain requirements
Background: The user has created a profile, and now he or she wants to see what kind of classes he or she needs to take to fulfill requirements given their inputs.


Scenario: see if we don't input anything to the profile, we should be able to see all the courses for all the requirements

	When I am on the profile page
	Then I press "Blueprint"
	Then I should see "English N001A"
	Then I should see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should see "Stats 2"
	Then I should see "German 1"
	Then I should see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should see "American Studies 10AC"
	Then I should see "Computer Science 61A"

Scenario: If Entry-Level Writing is satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the University page
	Then I check "Entry-Level Writing Satisfied" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should not see "English N001A"
	Then I should see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should see "Stats 2"
	Then I should see "German 1"
	Then I should see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should see "American Studies 10AC"

Scenario: If American History and Institutions is satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the University page
	Then I check "American History and Institutions" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should see "English N001A"
	Then I should not see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should see "Stats 2"
	Then I should see "German 1"
	Then I should see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should see "American Studies 10AC"
	
Scenario: If American Cultures requirements are already satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the University page
	Then I check "American Cultures Satisfied" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should see "English N001A"
	Then I should see "History 7A"
	Then I should not see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should see "Stats 2"
	Then I should see "German 1"
	Then I should see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should see "American Studies 10AC"


Scenario: If Reading and Composition requirements are already satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the College Requirements page
	Then I check "Reading and Composition Satisfied" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should not see "English N001A"
	Then I should see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should not see "English R001A"
	Then I should see "Stats 2"
	Then I should see "German 1"
	Then I should see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should see "American Studies 10AC"

Scenario: If Quantitative Reasoning requirements are already satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the College Requirements page
	Then I check "Quantitative Reasoning Satisfied" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should see "English N001A"
	Then I should see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should not see "Stats 2"
	Then I should see "German 1"
	Then I should see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should see "American Studies 10AC"

Scenario: If Foreign Language requirements are already satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the College Requirements page
	Then I check "Foreign Language Satisfied" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should see "English N001A"
	Then I should see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should see "Stats 2"
	Then I should not see "German 1"
	Then I should see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should see "American Studies 10AC"


Scenario: If Arts and Literature requirements are already satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the College Requirements page
	Then I check "Arts and Literature Satisfied" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should see "English N001A"
	Then I should see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should see "Stats 2"
	Then I should see "German 1"
	Then I should not see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should see "American Studies 10AC"

Scenario: If Biological Science requirements are already satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the College Requirements page
	Then I check "Biological Science Satisfied" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should see "English N001A"
	Then I should see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should see "Stats 2"
	Then I should see "German 1"
	Then I should see "Chinese 7A"
	Then I should not see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should see "American Studies 10AC"


Scenario: If Historical Studies requirements are already satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the College Requirements page
	Then I check "Historical Studies Satisfied" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should see "English N001A"
	Then I should see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should see "Stats 2"
	Then I should see "German 1"
	Then I should see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should not see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should see "American Studies 10AC"


Scenario: If Philosophy and Values requirements are already satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the College Requirements page
	Then I check "Philosophy and Values Satisfied" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should see "English N001A"
	Then I should see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should see "Stats 2"
	Then I should see "German 1"
	Then I should see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should not see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should see "American Studies 10AC"

Scenario: If Physical Science requirements are already satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the College Requirements page
	Then I check "Physical Science Satisfied" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should see "English N001A"
	Then I should see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should see "Stats 2"
	Then I should see "German 1"
	Then I should see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should not see "Bioengineering C125"
	Then I should see "American Studies 10AC"

Scenario: If Social and Behavioral Sciences requirements are already satisfied, then we should only see the courses except the ones for university requirements.

	When I am on the profile page
	Then I go to the College Requirements page
	Then I check "Social and Behavioral Sciences Satisfied" checkbox
	And I press "Save"
	Then I go to the profile page
	Then I press "Blueprint"
	Then I should see "English N001A"
	Then I should see "History 7A"
	Then I should see "Psychology 166AC"
	Then I should see "English R001A"
	Then I should see "Stats 2"
	Then I should see "German 1"
	Then I should see "Chinese 7A"
	Then I should see "Biology 1A"
	Then I should see "Classic 10A"
	Then I should see "Catalan 101"
	Then I should see "Anthropology 150"
	Then I should see "Bioengineering C125"
	Then I should not see "American Studies 10AC"