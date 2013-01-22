# encoding: utf-8

Feature: Celsius converter
	As a scientist
	I want to converter celsius to fahrenheit
    So I can work more efficiently

@iPhone
Scenario Outline: Convert celsius to fahrenheit
	Given I launch the app
	When I navigate to '°C/°F'
	And I fill in  'celsius input text' with <celsius>
	And I touch the 'convert celsius to fahrenheit' button
	Then I should see <fahrenheit> in 'fahrenheit result'

Examples:
	| celsius	| fahrenheit	|
	| 0	        | 32°F	        |
	| 5	        | 41°F	        |
	| 20	    | 68°F	        |

@iPad
Scenario Outline: Convert celsius to fahrenheit
	Given I launch the app
	When I fill in  'celsius input text' with <celsius>
	And I touch the 'convert celsius to fahrenheit' button
	Then I should see <fahrenheit> in 'fahrenheit result'

Examples:
	| celsius	| fahrenheit	|
	| 0	        | 32°F	        |
	| 5	        | 41°F	        |
	| 20	    | 68°F	        |