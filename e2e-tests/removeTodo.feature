Feature: Remove Todo
  Scenario: remove a todo
    Given I load the TodoApp
    Then I add new todo called "Pay rent"
    Then I remove a todo called "Pay rent"
    Then I should not see a todo called "Pay rent" in the list