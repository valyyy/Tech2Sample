Feature: Login Feature

  Scenario Outline: Login using valid/invalid credential
    Given I am on the LoginPage
    When I try to login using <username> and <password>
    Then I should be on this <url>
    And I should find the element located by id <element>

  Scenarios:
    | username      | password | url                                              | element    |
    | username      | password | https://biser-test.herokuapp.com/users/sign_in   | user_email |
    | test@test.com | test123  | https://biser-test.herokuapp.com/output_invoices | query      |


  Scenario Outline: Login with remember me checked
    Given I am on the LoginPage
    When I login using <username> <password> and remember me checked
    Then I should see my <username> after i log out
  Scenarios:
    | username      | password |
    | test@test.com | test123  |

