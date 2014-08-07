Feature: Login Feature

  Scenario Outline: Login using valid/invalid credential
    Given I am on the LoginPage
    When I try to login using <username> and <password>
    Then I should be on this <url>
    And I should find the element located by id <element>

    Scenarios:
        | username | password | url | element |
        | username | password | https://biser-test.herokuapp.com/users/sign_in |user_email|
        | test@test.com   | test123 | https://biser-test.herokuapp.com/output_invoices |query|
