Feature: Have Forum to discuss questions and answers

	As a student
	So that I can get my questions answered by other peers
	I want to be able to be able to ask questions and see their responses on the forum
	
Background: I am on the forum page
	
	Given I am on the home page
	And I am signed up
	Then I go to the forum page
	
Scenario: Create a Topic

	Then I follow "Classes"
	And I follow "New topic"
	And I fill in "topic_subject" with "Test Topic"
	And I fill in "topic_posts_attributes_0_text" with "Test Post"
	And I press "Create Topic"
	Then I should see "Test Topic"
	
Scenario: Forums are hidden to those who are not signed in
	
	And I am on the forum page
	Then I follow "Classes"
	Then I should see "There are no topics in this forum currently"
