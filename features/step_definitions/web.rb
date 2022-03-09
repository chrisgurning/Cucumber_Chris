
Given(/^user is on login page$/) do
  @browser = LoginPage.new
  @browser.load
  @browser.wait_until_login_logo_visible(wait: 20)
  expect(@browser).to have_username_field
end

When(/^user enter a valid credential$/) do
  @browser.input_username.send_keys(ENV['WEB_USERNAME'])
  @browser.submit_button.click
  @browser.input_password_field.send_keys(ENV['WEB_PASSWORD'])
  @browser.btn_login.click
end

Then(/^website home page will have displayed$/) do
  @browser = HomePage.new
  expect(@browser).to flex_container
  expect(@browser).to avatar
end
