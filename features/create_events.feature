Feature: Create Events
	As a administrator
	So that others in the organization can see all the information associated with an event
	I want to create a new event

Scenario: create an event that's accidentally in the past
	When I go to events page
	And I hit the create a new event button
	And then I fill out name with "Huli Huli Chicken Fundraiser"
	And then I fill out place with "The church"
	And then I fill out time_start with "8:00 AM"
	And then I fill out time_finish with "5:00 AM"
	And then I fill out event date with "10/12/2013"
	Then I should see "This date already passed."
	
Scenario: create a new event
	When I go to events page
	And I hit the create a new event button
	And then I fill out name with "Huli Huli Chicken Fundraiser"
	And then I fill out place with "The church"
	And then I fill out time_start with "8:00 AM"
	And then I fill out time_finish with "5:00 AM"
	And then I fill out event date with "10/12/2014"
	Then I should see "Huli Huli Chicken Fundraiser created for 10/12/2014"
