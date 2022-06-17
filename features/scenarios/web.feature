@web-automation
Feature: Web Automation Testing 

  @web-login
  Scenario: Login to DMS-Simplidots
    Given user is on login page
    When user enter a valid credential
    Then website home page will have displayed

  @Create-NewOrder
  Scenario: Create New Order With Valid Data
    Given user is on login page
    When user enter a valid credential
    Then website home page will have displayed
    And user create new order 

 

