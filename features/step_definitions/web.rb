
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
  expect(@browser).to have_flex_container
  expect(@browser).to have_avatar
end

And(/^user to product page$/) do
  @browser = ProductPage.new
  @browser.load
  expect(@browser).to have_main_product
  @browser.action_cart.click
  @browser.wait_until_dialog_panel_visible(wait: 20)
  @browser.cart_button.click
  @browser.wait_until_cart_title_visible(wait: 20)
  @browser.wait_until_list_cart_product_visible(wait: 20)
end

And(/^search product$/) do
  @browser.input_search.send_keys(ENV['PRODUCT_NAME'])
  @browser.searh_button.click
  @browser.wait_until_thumbnail_product_visible(wait: 20)
end




