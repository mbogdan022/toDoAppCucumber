Feature: Multiple scenarios feature
  Scenario: add simple todo
    Given I load the TodoApp
    When I add new todo called "Pay rent"
    Then I should see a "pending" todo called "Pay rent"
  Scenario: complete simple todo
    Given I load the TodoApp
    When I add new todo called "Pay rent"
    And I mark "Pay rent" as "completed"
    Then I should see a "completed" todo called "Pay rent"
    Then I should not see a "pending" todo called "Pay rent"
  Scenario: remove a todo
    Given I load the TodoApp
    Then I add new todo called "Pay rent"
    Then I remove a todo called "Pay rent"
    Then I should not see a todo called "Pay rent" in the list
  Scenario: view todo count
    Given I load the TodoApp
    When I add new todo called "Pay rent"
    Then I should see 3 todos
    # There are 2 todos when app starts
