Feature: snippets
  Background:
    Given I am a registered user
      And I have a board

  Scenario: creating a new snippet
    When I submit new snippet
    Then I should see 'success'
