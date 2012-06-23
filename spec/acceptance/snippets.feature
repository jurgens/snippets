Feature: snippets
  Background:
    Given I am a registered user

  Scenario: creating a new snippet
    When I submit new snippet
    Then I should see 'success'
