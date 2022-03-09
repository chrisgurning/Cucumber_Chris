@web-automation
Feature: Web Automation Testing 

  @web-login
  Scenario: Login to Bukalapak
    Given user is on login page
    When user enter a valid credential
    Then website home page will have displayed

  @web-add_to_cart
  Scenario: Add Product to Cart
    Given user is on login page
    When user enter a valid credential
    Then website home page will have displayed
    And user to product page 

  @search-product
  Scenario: Search Product
    Given user is on login page
    When user enter a valid credential
    Then website home page will have displayed
    And search product

