@javascript
Feature: search
  Background:
    Given I am a registered user
    Given I have snippet named "Brilliant"
    Given I have snippet named "Awful"

  Scenario: searching for a snippet
    When I search for "Brilliant"
    Then I should see "Brilliant"
     And I should not see "Awful"