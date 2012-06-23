Feature: Boards
  As a user I want to organize snippets via boards

  Scenario: create default boards upon sign up
    When I sign up as new user
    Then I am on a my recent board page