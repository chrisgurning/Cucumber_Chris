# frozen_string_literal: true

class LoginPage < SitePrism::Page
  path = ENV['WEB_BASE_URL'] + '/login'
  set_url(path)

  element :login_logo, '.plf__logo'
  element :username_field, '.bl-text-field__inner'
  element :input_username, '#LoginID'
  element :input_password_field, '#Password'
  element :submit_button, '#submit_button'
  element :btn_login, '#btn-login'
end
