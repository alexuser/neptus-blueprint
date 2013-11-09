Background: I am on the profile page as a logged in user
	
	Given I am logged in as a user
	And I am on my profile page

Scenario: go to the "college requirements" page

	When I click "college requiremet"
	Then I should be on the "college requirement" page
