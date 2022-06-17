Given(/^user is on login page$/) do
  @browser = LoginPage.new
  @browser.load
  @browser.wait_until_login_logo_visible(wait: 20)
  expect(@browser).to have_username_field
end

When(/^user enter a valid credential$/) do
  @browser.input_username.send_keys(ENV['WEB_USERNAME'])
  @browser.input_password_field.send_keys(ENV['WEB_PASSWORD'])
  @browser.btn_login.click
end

Then(/^website home page will have displayed$/) do
  @browser = HomePage.new
  expect(@browser).to have_avatar(wait: 20)
end

And(/^user create new order$/) do
  @browser = Order.new
  @browser.load
  # expect(@browser).to have_title(wait:10)
  @browser.add_button.click
  @browser.wait_until_title_visible(wait: 100)
  @browser.customer.click
  @browser.select_customer.click
  @browser.product.click
  @browser.quantity.send_keys(ENV['quantity_product'])
  @browser.button_save.click
end

And(/^search product$/) do
  @browser.input_search.send_keys(ENV['PRODUCT_NAME'])
  @browser.searh_button.click
  @browser.wait_until_thumbnail_product_visible(wait: 20)
end




