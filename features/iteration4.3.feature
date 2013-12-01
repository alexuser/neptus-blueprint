Feature: Have Forum to discuss questions and answers

	As a student
	So that I can get my questions answered by other peers
	I want to be able to be able to ask questions and see their responses on the forum
	
Background: I am on the forum page
	Given I am on the home page
	And I am signed up
	Then I go to the forum page
	
Scenario: Make a post
	Given I am on the forum page
	Then I make a post with message "Test message" and Title "Test Post"
	Then I should see "Initial Post"
	
Scenario: Add on to the post:
	Given I am on the forum page
	Then I answer the "Test Post" post on the forum with message "Test message 2"
	Then I should see "Test message" before "Test message 2"