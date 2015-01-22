
When (/^I visit the Experience home page$/) do
	visit ("http://experience.usatoday.com/beach/")

end

#Exphomeheader

Given(/^I am on the Experience home page$/) do
	expect(page).to have_selector(:id,'main-carousel')

end
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


When(/^I select'Find My Experience'front$/) do
    page.driver.browser.manage.window.maximize
    @expected_FE =find(".nav-bar.navigation").find(".nav-find-experience").find("a")["href"] 
   find(".nav-bar.navigation").find(".nav-find-experience").find("a").click

end
Then(/^'Find My Experience'front should dispalys$/) do
    expect(current_url).to match @expected_FE
    page.evaluate_script('window.history.back()')
end


When(/^I select'Best Beaches'front$/) do
  @expected_BB =find(".nav-bar.navigation").find(".nav-best-beaches").find("a")["href"] 
   find(".nav-bar.navigation").find(".nav-best-beaches").find("a").click
end

Then(/^'Best Beaches'front should dispalys$/) do
    expect(current_url).to match @expected_BB
    page.evaluate_script('window.history.back()')
end

When(/^I select'Best Photos'front$/) do
  @expected_BP =find(".nav-bar.navigation").find(".nav-Beach.Photos").find("a")["href"] 
   find(".nav-bar.navigation").find(".nav-Beach.Photos").find("a").click
end

Then(/^'Best Photos'front should dispalys$/) do
   expect(current_url).to match @expected_BP
    page.evaluate_script('window.history.back()')
end

When(/^I select'Free Beach Quotes'front$/) do
  @expected_FQ =find(".nav-bar.navigation").find(".nav-connect").find("a")["href"] 
   find(".nav-bar.navigation").find(".nav-connect").find("a").click
end

Then(/^'Free Beach Quotes'front should dispalys$/) do
  first_window= page.driver.browser.window_handles.first

  new_window = page.driver.browser.window_handles.last

  page.driver.browser.switch_to.window new_window
  expect(current_url).to match @expected_FQ
  page.driver.browser.close

   page.driver.browser.switch_to.window first_window
end

#Expsocial
When(/^I click FB icon$/) do
  @expected_FB =first(".social-media-icon").find("a")["href"] 
  first(".social-nav").find(".icon.icon-facebook").click
  end

Then(/^FB home page should display$/) do

  first_window= page.driver.browser.window_handles.first

  new_window = page.driver.browser.window_handles.last

  page.driver.browser.switch_to.window new_window

  expect(current_url).to match @expected_FB
   page.driver.browser.close

   page.driver.browser.switch_to.window first_window
end

When(/^I click Twitter icon$/) do
  @allelements=all(".social-media-icon")
  @expected_TW =@allelements[1].find("a")["href"]
  first(".social-nav").find(".icon.icon-twitter").click
end

Then(/^Twitter home page should display$/) do
  first_window= page.driver.browser.window_handles.first

  new_window = page.driver.browser.window_handles.last

  page.driver.browser.switch_to.window new_window

  expect("https://www.twitter.com/expbeach").to match @expected_TW
   page.driver.browser.close
page.driver.browser.switch_to.window first_window
end

#ExpSearch 
When(/^I click Search icon$/) do
   @expected_SE =first(".nav-search").find("a")["href"] 
  first(".social-nav").find(".nav-search").find("a").click
end
 
Then(/^Search page should display$/) do
  expect(current_url).to match @expected_SE
  page.evaluate_script('window.history.back()')
end















