Feature: Mail preview

  In order to make sure the details of the event are all right
  As a event organizer
  I want to preview the mail that will be sent to my friends
  
  Scenario: I see the email contents
  
    Given pending # Remove me
    
    Given I've created the following event:
    | email    | christos@me.com        |
    | name     | Monsters of Ruby III   |
    | location | Serrano 120, Madrid    |
    | dates    | 2009/10/24, 2009/10/31 |
    And I am on the send form for the "Monsters of Ruby III" event
    
    Then I should see preview of the message to be sent with the following content
    """
    Hi,
    christos@me.com has invited you to an event called "Monsters of Ruby III" to take place in "Serrano 120, Madrid" on one of the following dates:
    - Sat, 24th of October 2009
    - Sat, 31th of October 2009
    Please follow this link to select which of the dates you are available, if any:
    http://example.url
    """
    And the preview message should include a Google Maps image of "Serrano 120, Madrid"
    
    