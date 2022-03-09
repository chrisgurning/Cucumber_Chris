@web-automation
Feature: Web Automation Testing 

  @web-login
  Scenario: Login to Bukalapak
    Given user is on login page
    When user enter a valid credential
    Then website home page will have displayed
