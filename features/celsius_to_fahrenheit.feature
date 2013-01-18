# encoding: utf-8

Feature: Celsius converter
	As a scientist
	I want to converter celsius to fahrenheit

Scenario Outline: Convert celsius to fahrenheit
	Given I launch the app
	When I navigate to '°C/°F'
	And I enter <celsius>°C
	And I press the 'Convert celsius' button
	Then I should have <fahrenheit>°F

Examples:
	| celsius	| fahrenheit	|
	| 0	        | 32	        |
	| 5	        | 41	        |
	| 20	    | 68	        |