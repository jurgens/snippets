Feature: snippets
  Background: I am a registered user

  Scenario: new snippet
    When I am on the "new snippet" page
     And submit new snippet
    Then I should see 'success' message