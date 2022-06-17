
class LoginPage < SitePrism::Page
  path = ENV['WEB_BASE_URL'] + '#/Account/Signin'
  set_url(path)

  element :login_logo, '.logo'
  element :username_field, '.col-lg-12.col-md-12.col-sm-12'
  element :input_username, 'input[autocomplete="username"]'
  element :input_password_field, '.form-control.ng-pristine.ng-untouched.ng-invalid.ng-invalid-required'
  element :btn_login, '.btn.submitButtonReed.ng-scope'
  element :btn_register, '.btn.submitButtonWhite.ng-scope'
end
