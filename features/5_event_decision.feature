Feature: Deciding on when the event will take place

  In order to let my friends know when the event will take place after every one has voted
  As an event organizer
  I want to make the final decision on the final date and notify my mates
  
  Background:
    Given pending # Remove me
    
    Given I've created the following event:
    | email       | christos@me.com        |
    | name        | Monsters of Ruby III   |
    | location    | Serrano 120, Madrid    |
    | dates    | 2009/10/24, 2009/10/31 |
    
    And the following guests to Monsters of Ruby III have casted their votes:
    | cabezacebolla@iheartphp.com | 2009/10/31, 2009/10/24 |
    | obie@railsmaturitymodel.com | 2009/10/31, 2009/10/24 |
    | alexpayne@iusescala.com | 2009/10/31 |
    | davidblack@iloveruby.com |  |
    
  Scenario: Event owner closes the event date
  
    Given pending # Remove me
    
    When I access the Monsters of Ruby III event page
    Then I should see a "Settle as event date" link besides each possible date
    
    When I click on the "Settle as event date" link that corresponds to date 2009/10/24
    Then I should see a "You've settled the event date to: 2009/10/24. Everyone has been notified"
    
    Then 4 emails should have been sent to each of the following recipients:
    | cabezacebolla@iheartphp.com |
    | obie@railsmaturitymodel.com |
    | alexpayne@iusescala.com |
    | davidblack@iloveruby.com |
    And the body of every email should contain the following text:
    """
    Hi,
    "Monsters of Ruby III" will take place in "Serrano 120, Madrid" on:
    
    Sat, 24th of October 2009
    
    Of all the people invited, these are likely to attend:
    - cabezacebolla@iheartphp.com
    - obie@railsmaturitymodel.com
    
    These are not likely to attend, or did not choose a date:
    - alexpayne@iusescala.com
    - davidblack@iloveruby.com
    
    Have fun!
    """
  
  Scenario: Guests cannot settle the event date
    Given pending # Remove me
    
    When cabezacebolla@iheartphp.com accesses the Monsters of Ruby III event page
    
    Then he should not see a "Settle as event date" link besides each possible date

  Scenario: No more votes can be casted once an event is closed
    Given pending # Remove me
    Given I've closed the "Monsters of Ruby III" event

    When cabezacebolla@iheartphp.com accesses the Monsters of Ruby III event page

    Then he should not be able to vote on dates anymore
  
