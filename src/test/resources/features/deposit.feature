Feature: deposit
    As a customer
    I want to deposit to my account using ATM

  Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    And I login to ATM with id 1 and pin 111

  Scenario: Deposit amount balance
    When I deposit 50 by using ATM
    Then my account balance is 250

  Scenario: Deposit amount balance
    When I deposit -50 by using ATM
    Then my account balance is 200
