Given(/^I am on the sign up page$/) do
  visit '/users/sign_up'
end

When(/^I sign up as a user with email '(.*)'$/) do |email|
  fill_in 'Email', :with => email
  fill_in 'Password', :with => 'password'
  fill_in 'Password confirmation', :with => 'password'
  click_button 'Sign up'
end

Then(/^I should have an account$/) do
  assert_equal 1, User.count
end

Given(/^I am on the login page$/) do
  visit '/users/sign_in'
end

Given(/^I have already registered as '(.*)'$/) do |email|
  User.create(:email => email, :password => 'password', :password_confirmation => 'password')
end

When(/^I login with '(.*)'$/) do |email|
  fill_in 'Email', :with => email
  fill_in 'Password', :with => 'password'
  click_button 'Log in'
end

Then(/^I should see '(.*)'$/) do |expected|
  assert page.has_content?(expected)
end
