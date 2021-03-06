# encoding: utf-8

Feature: Having two converters
	As a scientist
	I want to have some converters
	So I can work more efficiently

@iPhone
Scenario: Having two converters
Given I launch the app                                      
    Then I can choose between 'miles/km' and '°C/°F' converters
    When I navigate to 'miles/km'
    Then I should be on the miles/km screen
    When I navigate to '°C/°F'
    Then I should be on the °C/°F screen

@iPad
Scenario: Having two converters
    Given I launch the app
    When I do nothing
    Then I should see the miles/km and the °C/°F converters on the same screen
