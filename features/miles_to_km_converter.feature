# encoding: utf-8

Feature: Miles converter
	As a scientist
	I want to converter miles in km

Scenario Outline: Convert miles to km
	Given I launch the app
	When I navigate to 'miles/km'                               
	And I enter <miles> mile(s)
	And I press the 'Convert miles' button
	Then I should have <km> km

Examples:
	| miles	| km	|
	| 0	| 0	|  
	| 1	| 1.609	|
	| 2	| 3.218	|     
