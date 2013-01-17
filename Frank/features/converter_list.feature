Feature: Having 'miles/km' and '°C/°F' converters

Scenario: Check converter list
Given I launch the app
Then I can choose between 'miles/km' and '°C/°F' converters

When I navigate to 'miles/km'
Then I should be on the miles/km screen

When I navigate to '°C/°F'
Then I should be on the °C/°F screen
