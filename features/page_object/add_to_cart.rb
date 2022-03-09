
class ProductPage < SitePrism::Page
    path = ENV['WEB_BASE_URL'] + '/p/komputer/printer/tinta-printer/j1wktm-jual-hp-680-black-ink-cartridge-f6v27aa'
    set_url(path)
  
    element :main_product, '#section-main-product'
    element :action_cart, '.c-main-product__action__cart'
    element :dialog_panel, '.c-dialog__panel'
    element :cart_button, '.c-cart-dialog__cart-button'
    element :cart_title, '.bl-text'
    element :list_cart_product, '.mb-0'
  end
  