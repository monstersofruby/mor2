Feature: Vote for dates

  In order to make the organizer known about the dates I'm available for the event
  As an event guest
  I want to vote for them
  
  Background:
    Given the following event:
    | email    | christos@me.com        |
    | name     | Monsters of Ruby III   |
    | location | Serrano 120, Madrid    |
    | dates    | 2009/10/24, 2009/10/31 |
    And the following attendants have been invited to Monsters of Ruby III:
    | cabezacebolla@iheartphp.com |
    | obie@railsmaturitymodel.com |
    | alexpayne@usescala.com      |
    | davidblack@iloveruby.com    |
    And my email address is cabezacebolla@iheartphp.com
    And I've clicked on the link in the email I've received
    And 2009/10/24 has received 3 votes in Monsters of Ruby III
    And 2009/10/24 has received 10 votes in Monsters of Ruby III

  Scenario: I go to the event page
    Given pending # Remove me
    Then I should be on the event page for "Monsters of Ruby III"
    Then I should see "Monster of Ruby III"
    And I should see "christos@me.com"
    And I should see "Serrano 120, Madrid"
    And I should see a map image of "Serrano 120, Madrid"
    And I should see "Sat, 24th of October 2009 (3 can attend)"
    And I should see "Sat, 31th of October 2009 (10 can attend)"
    
  Scenario: I vote for dates
    Given pending # Remove me
    When I check "Sat, 24th of October 2009"
    And I press "Respond"
    
    Then I should be on the event page for "Monsters of Ruby III"
    And I should see "Your preferences for the event have been updated, Thanks!"
    And I should see "Sat, 24th of October 2009 (4 can attend)"
    And I should see "Sat, 31th of October 2009 (10 can attend)"
    And "Sat, 24th of October 2009" should be checked
    And "Sat, 31th of October 2009" should not be checked
    
    When I check "Sat, 31th of October 2009"
    And I press "Respond"
    
    Then I should see "Sat, 24th of October 2009 (4 can attend)"
    And I should see "Sat, 31th of October 2009 (11 can attend)"
    And "Sat, 24th of October 2009" should be checked
    And "Sat, 31th of October 2009" should be checked
    
    