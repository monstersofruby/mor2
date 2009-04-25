Feature: Mail delivery

  In order to my friends to know about the event I'm organizing and give the feedback about the dates they prefer
  As a event organizer
  I want to send a mail for the event
  
  Scenario: Mail sent
  
    Given pending # Remove me
  
    Given I've created the following event:
    | email    | christos@me.com        |
    | name     | Monsters of Ruby III   |
    | location | Serrano 120, Madrid    |
    | dates    | 2009/10/24, 2009/10/31 |
    And I am on the send form for the "Monsters of Ruby III" event
    
    When I fill in "Send to" with 
    """
    aslak.hellesoy@gmail.com
    dave@pragprog.com
    wycats@gmail.com
    """
    And I fills in "Are you human?" with the correct captcha
    And I press "Send"
    
    Then 3 mails should have been sent to each of the following recipients
    | aslak.hellesoy@gmail.com |
    | dave@pragprog.com        |
    | wycats@gmail.com         |
    And the body of every email should contain the following text:
    """
    Hi,
    christos@me.com has invited you to an event called "Monsters of Ruby III" to take place in "Serrano 120, Madrid" on one of the following dates:
    - Sat, 24th of October 2009
    - Sat, 31th of October 2009
    Please follow this link to select which of the dates you are available, if any:
    """
    And each email sent should have a different urls to access the event
