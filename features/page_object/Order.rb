
class Order < SitePrism::Page
    path = ENV['WEB_BASE_URL'] + '/#/SalesOrder'
    set_url(path)

    
    element :title, '.co-sales.ng-binding.ng-scope'
    element :add_button, '.btn-float.ripple-button2.ng-scope'
    element :customer, "input[id='ui-select-choices-24']"
    element :select_customer, "select[id='ui-select-choices-5']"
    element :shipping, '.btn.btn-default.form-control.ui-select-toggle'
    element :product, "select[id='ui-select-choices-row-5-0']"
    element :quantity, "input[class='form-control text-right padding-numbber ng-valid ng-dirty ng-valid-number ng-touched']"
    element :button_save, '.btn.btn-md.btn-success.pull-right'
  end
  