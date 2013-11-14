Feature: Sign Up For Events
	As a normal user
	So I can attend an event
	I want to mark myself as attending the event

  # administrator tracking of how many people attend an event is a separate feature

Scenario: Signing up for an event correctly
	When I go to an event's page
	And I hit the signup button
	And I fill in "Time going: " with "8:30 AM"
	And I fill in "Time leaving: " with "12:00 PM"
	Then I should see "You will be attending from 8:30 AM to 12:00 PM"
	
Scenario: Signing up for an event incorrectly
	When I go to an event's page with mistakes
	And I hit the signup button
	And I fill in "Time going: " with "8:30 PM"
	And I fill in "Time leaving: " with "12:00 PM"
	Then I should see "The time does not fall within the event."
