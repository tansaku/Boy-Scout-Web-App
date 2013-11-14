Feature: Add New Users
	As an administrator
	So that others in the organization can use the service
	I want to add a new user name, password, and assign access


Scenario: add a new user
	When I go to User Info Page
	And I hit the add user button
	And I fill in name with "Brent"
	And I fill in password with "password"
	And I fill in access_level with "administrator"
	Then I should see "Brent: administrator"
	
Scenario: add a new user
	When I go to User Info Page
	And I hit the add user button
	And I fill in name with "Steph"
	And I fill in password with "password",
	And I fill in access_level with "user"
	Then I should see "Steph: user"
