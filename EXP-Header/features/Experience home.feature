Feature: Verifying Experience home header.
Background:
When I visit the Experience home page 

@Exphomeheader 
Scenario:Verifying Experience home page 
Given I am on the Experience home page 
When I click on 'USA TODAY TRAVEL' logo
Then I should be on 'USAtodaytravel' page 
When I click on browser back button
When I click on 'Experience' logo
Then I am on the Experience home page 
When I select'Find My Experience'front
Then 'Find My Experience'front should dispalys
When I select'Best Beaches'front
Then 'Best Beaches'front should dispalys
When I select'Best Photos'front
Then 'Best Photos'front should dispalys
When I select'Free Beach Quotes'front
Then 'Free Beach Quotes'front should dispalys

@Expsocial
Scenario:Verifying Experience social
When I click FB icon
Then FB home page should display
When I click Twitter icon
Then Twitter home page should display

@ExpSearch 
Scenario:Verifying search page 
When I click Search icon
Then Search page should display












