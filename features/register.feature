Feature: Register

  Scenario Outline: Trying to register with one empty field
    Given I am on RegisterPage
    When I try to register leaving <field> empty
    Then I should see the <error>

  Scenarios:
    | field         | error                    |
    | user_email    | Email mora biti ispunjeno   |

  Scenario Outline: Trying to register using valid/invalid information
    Given I am on RegisterPage
    When I try to register using <status> information
    Then I should be on this <url>
    And I should find the element located by id <element>

  Scenarios:
    | status  | url                                              | element           |
    | invalid | https://biser-test.herokuapp.com/users           | user_company_name |
    | valid   | https://biser-test.herokuapp.com/output_invoices | query             |
