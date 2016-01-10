Feature: Gift Exchange
  In order to avoid issues doing gift exchanges with couples and families
  As a secret santa
  I want to be randomly assigned to someone I'm not related to

  Scenario: Two sisters and two friends
    Given that we have Arya, Sansa, Petyr, and The Hound
    And Arya and Sansa are sisters
    When they do gift exchanges
    Then Arya should be assigned to either The Hound or Petyr
    And Sansa should also be assigned to either The Hound or Petyr
