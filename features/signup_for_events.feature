Feature: Sign Up For Events
	As an administrator and normal user
	So that administrators can keep track of how many people are attending
	I want to mark myself as attending the event

Scenario: Signing up for an event
	When I go to an event's page
	And I hit the signup button
	And I fill in "Time going: " with "8:30 AM"
	And I fill in "Time leaving: " with "12:00 PM"
	Then I should see "You will be attending from 8:30 AM to 12:00 PM"
	
Scenario: Signing up for an event
	When I go to an event's page
	And I hit the signup button
	And I fill in "Time going: " with "8:30 PM"
	And I fill in "Time leaving: " with "12:00 PM"
	Then I should see "The time does not fall within the event."
