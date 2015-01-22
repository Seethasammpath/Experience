Feature: Verifying Experience home page 
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

@ExpTopdestination 
Scenario:Verifying Top Destination down arrow
When I mouse hover "Top Destinations" icon on the navigation bar 
And I select "Any" option 
Then I am viewing the "Destination" page

@ExpImagecarousel
Scenario:Verifying the Imagecarousel
Given I am on the Image carousel module 
Then I should see asset "caption" 
Then I should see asset "credit" 
When I click on "right & left" carousel arrow

@Expnewsletter
Scenario:verifying Newsletter
Given I am on the Newsletter module 
 When I select following emailID and message :
	|emailID       |message |
	|test@gmail.com|valid   |
	|sdsffffsfdfffg|invalid |
 Then the corresponding message should display.

@Exppromotiles 
Scenario:verifying promotiles
Given I am on the promotiles module
When I click on Find my experience tile
Then I should navigate to front 
When I click on "any" other tiles 
Then I should navigate to "corresponding" page.

@Search @pause 
Scenario:Search: Basic functionality 
When I click Search icon
Then Search page should display












