
When (/^I visit the Experience home page$/) do
	visit ("http://experience.usatoday.com/beach/")

end

Given(/^I am on the Experience home page$/) do
	expect(page).to have_selector(:id,'main-carousel')

end
#Header
When(/^I click on 'USA TODAY TRAVEL' logo$/) do
     click_link('USA TODAY TRAVEL')
end


Then(/^I should be on 'USAtodaytravel' page$/) do
	expect(page).to have_selector(:id,'section_travel')
end

When (/^I click on browser back button$/) do
    page.evaluate_script('window.history.back()')
	end 

When(/^I click on 'Experience' logo$/) do
 
  find(".experience-logo").click
end 

 require 'debug'
When(/^I select'Find My Experience'front$/) do
    #click_link('Find My Experience')
    page.driver.browser.manage.window.maximize
    @expected_FE =find(".nav-bar.navigation").find(".nav-find-experience").find("a")["href"] 
   find(".nav-bar.navigation").find(".nav-find-experience").click

end
Then(/^'Find My Experience'front should dispalys$/) do
    expect(current_url).to match @expected_FE
    page.evaluate_script('window.history.back()')
end


When(/^I select'Best Beaches'front$/) do
  @expected_BB =find(".nav-bar.navigation").find(".nav-best-beaches").find("a")["href"] 
   find(".nav-bar.navigation").find(".nav-best-beaches").click
end

Then(/^'Best Beaches'front should dispalys$/) do
    expect(current_url).to match @expected_BB
    page.evaluate_script('window.history.back()')
end

When(/^I select'Best Photos'front$/) do
  @expected_BP =find(".nav-bar.navigation").find(".nav-Beach.Photos").find("a")["href"] 
   find(".nav-bar.navigation").find(".nav-Beach.Photos").click
end

Then(/^'Best Photos'front should dispalys$/) do
   expect(current_url).to match @expected_BP
    page.evaluate_script('window.history.back()')
end

When(/^I select'Free Beach Quotes'front$/) do
  @expected_FQ =find(".nav-bar.navigation").find(".nav-connect").find("a")["href"] 
   find(".nav-bar.navigation").find(".nav-connect").click
end

Then(/^'Free Beach Quotes'front should dispalys$/) do
  expect("http://www.tripology.com/?CMPID=Tripology-header-beach").to match @expected_FQ
  page.execute_script "window.close();"
end

When(/^I click FB icon$/) do
  @expected_FB =first(".social-media-icon").find("a")["href"] 
  first(".social-nav").find(".icon.icon-facebook").click
  end

Then(/^FB home page should display$/) do
  expect("https://www.facebook.com/experiencebeach").to match @expected_FB
  page.execute_script "window.close();"
end
When(/^I click Twitter icon$/) do
  
   @expected_TW =all(".social-media-icon")
   @expected_TW[1].find("a")["href"]
  first(".social-nav").find(".icon.icon-twitter").click
end

Then(/^Twitter home page should display$/) do
   expect(current_url).to match @expected_TW
   page.execute_script "window.close();"
end

#Image carousel module

Given(/^I am on the Image carousel module$/) do
  expect(page).to have_selector(:id,'main-carousel')
end
 


Then(/^I should see asset "(.*?)"$/) do |asset_detail|
  asset_detail=asset_detail.downcase
 if asset_detail == "caption"
expect(find(".carousel-caption")).to have_text
elsif asset_detail == "credit"
expect(find(".nested-credit")).to have_text
end
end

When(/^I click on "(.*?)" carousel arrow$/) do |arrow|
within @module_scope do
@curr_slide = find('.item.active').text
if arrow == 'right'
find('.icon-chevron-right').click
elsif arrow == 'left'
find('.icon-chevron-left').click
end
end 
end

Then(/^I am taken to the "(.*?)" asset$/) do |direction|
within @module_scope do
@changed_slide = find('.item.active').text
end
end


#Expnewsletter 

Given(/^I am on the Newsletter module$/) do
  expect(page).to have_css(".exact-target-input-wrapper")
end

When(/^I select following emailID and message :$/) do |table|
  table.hashes.each do |row|
    email_Value=row['emailID']
    #within("exact-target-footer-form") do
   
      fill_in('Email_Address', with: 'a@gmail.com')
      message_Value=row['message']
    #end    
    #  Find ('.ui-btn exact-target-input exact-target-submit').click
  end
end

Then(/^the corresponding message should display\.$/) do
  pending # express the regexp above with the code you wish you had
end

#Exppromotiles 
Given(/^I am on the promotiles module$/) do
  expect(page).to have_css(".modern-footer-blocks")
end

When(/^I click on Find my experience tile$/) do 
  @expected_FME =find("#nav-find-my-experience").find("a")["href"] 
  find(".nav-find-my-experience-overlay").click
end

Then(/^I should navigate to front$/) do 
  expect(current_url).to match @expected_FME
    page.evaluate_script('window.history.back()')
  end


When(/^I click on "(.*?)" other tiles$/) do |promotile_select|
  
  @str=find(".modern-footer-blocks").all("a")
end


#Search Feature
When(/^I click Search icon$/) do
   @expected_SE =first(".nav-search").find("a")["href"] 
  find(".nav-search").click
end

Then(/^Search page should display$/) do
  expect(current_url).to match @expected_SE
  page.evaluate_script('window.history.back()')
end















