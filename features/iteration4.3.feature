Feature: Have Forum to discuss questions and answers

	As a student
	So that I can get my questions answered by other peers
	I want to be able to be able to ask questions and see their responses on the forum
	
Background: I am on the forum page
	

Scenario: Test the existence of forum
	Given I am on the home page
	And I am signed up
	Then I go to the forum page

Scenario: Create a new post
	Given I am on the forum page
	And I am signed up
	And I go to the classes
	And I follow "New topic"
	Then I should see "Creating a new topic"
	When I fill in "topic_subject" with "hello"
	And I fill in "topic_posts_attributes_0_text" with "hello world"
	And I press "Create Topic"
	Then I am on the hello post page
	And I should see "Reply"
	And I should see "Delete"
	And I should see "Quote"
	And I should see "Editing post"
	And I should see "hello world"

Scenario: Editing a post
	Given I am on the forum page
	And I am signed up
	And I go to the classes
	And I follow "New topic"
	Then I should see "Creating a new topic"
	When I fill in "topic_subject" with "hello"
	And I fill in "topic_posts_attributes_0_text" with "hello world"
	And I press "Create Topic"
	Then I am on the hello post page