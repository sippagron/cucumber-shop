Feature: Stock check

  Background:
    Given a product "apple" for 75 in stock with price 20.00 for each product
    And a product "banana" for 100 in stock with price 40.00 for each product

  Scenario: Buy product more than stock
    When I buy 25 "apple" that more than stock
    Then There are 50 "apple" in stock

  Scenario: Buy product less than stock
    When I buy 25 "banana" that less than stock
    Then There are 75 "banana" in stock