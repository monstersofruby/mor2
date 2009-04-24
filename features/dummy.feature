In order to test my application
As a Monster of Ruby
I want to run my features with Cucumber

  Scenario: I can see the Rails welcome page
  
    When I go to the homepage
    
    Then I should see "You’re riding Ruby on Rails!"

  @advanced
  Scenario: I can see a link to the Rails API docs

    When I go to the homepage

    Then I should see "Here’s how to get rolling"
  