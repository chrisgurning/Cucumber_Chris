# frozen_string_literal: true

class HomePage < SitePrism::Page
  element :flex_container, '.bl-flex-container'
  element :avatar, '.bl-avatar'
  element :input_search, '#v-omnisearch__input'
  element :searh_button, '.v-omnisearch__submit'
  element :thumbnail_product, '.bl-thumbnail--img'
end
