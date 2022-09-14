@Smoke
Feature: google


Background:
    Given Google is open
    
@Regression
Scenario: Search Google for Edgewords
    
    When I search for 'Edgewords'
    Then 'Edgewords' is the top result



Scenario Outline: Search google for multiple things
    When I search for '<searchTerm>'
    Then '<searchResult>' is the top result



Examples:
    | searchTerm | searchResult               |
    | Edgewords  | Automated Software Testing |
    | BBC        | The best of the BBC        |




Scenario: Checking multiple results
    
    When I search for 'Edgewords'
    Then I see in the results
        | url                                 | title                                                    |
        | https://www.edgewordstraining.co.uk | Edgewords Training - Automated Software Testing Training |
        | https://twitter.com › edgewords     | Edgewords - Twitter                                      |
