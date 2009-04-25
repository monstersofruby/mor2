Feature: Additional functionalities

  @advanced
  Scenario: No friends

    Given I want to organize an event
    But I don't have any friends
  
    When I go to the homepage
  
    Then I should see "EPIC FAIL!"
  