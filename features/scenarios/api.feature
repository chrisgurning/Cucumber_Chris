@api-automation
Feature: Rest API Testing 

  @get-api
  Scenario: GET API
    Given user login to hit the API
    When user sends a GET request to "/posts"
    Then response status should be "200"
    And response should have "$..userId"
    And response "$..userId" should be integer
    And response should have "$..id"
    And response "$..userId" should be integer
    And response should have "$..title"
    And response "$..title" should be string
    And response should have "$..body"
    And response "$..body" should be string



  @post-api
  Scenario: Post API
    Given user login to hit the API
    When user sends a POST request to "/posts" with body:
    """
      {
			  "title":"recommendation",
			  "body":"motorcycle",
			  "userId":12
			}
    """
    Then response status should be "201"
    And response should have "$..userId" matching "12"


    