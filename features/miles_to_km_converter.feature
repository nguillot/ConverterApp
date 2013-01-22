# encoding: utf-8

Feature: Miles converter
	As a scientist
	I want to converter miles in km
    So I can work more efficiently

@iPhone
Scenario Outline: Convert miles to km
	Given I launch the app
	When I navigate to 'miles/km'
	And I fill in  'miles input text' with <miles>
	And I touch the 'convert miles to km' button
	Then I should see <km> in 'km result'

Examples:
	| miles	| km	    |
	| 0	    | 0 km	    |
	| 1	    | 1.609 km	|
	| 2	    | 3.218 km  |

@iPad
Scenario Outline: Convert miles to km
	Given I launch the app
	When I fill in  'miles input text' with <miles>
	And I touch the 'convert miles to km' button
	Then I should see <km> in 'km result'

Examples:
	| miles	| km	    |
	| 0	    | 0 km	    |
	| 1	    | 1.609 km	|
	| 2	    | 3.218 km  |
