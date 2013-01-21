# encoding: utf-8

Given /^I launch the app$/ do
  check_element_exists("view")
end

Then /^I can choose between '(.*?)' and '(.*?)' converters$/ do |converter1,converter2|
  check_element_exists("tabBarButton accessibilityLabel:'" + converter1 + "'")
  check_element_exists("tabBarButton accessibilityLabel:'" + converter2 + "'")
end

When /^I navigate to '(.*?)'$/ do |converter|
 if converter == 'miles/km'
   touch "tabBarButton index:0"
 else
   touch "tabBarButton index:1"
 end
end

Then /^I should be on the miles\/km screen$/ do
  check_element_exists "textField marked:'miles input text'"
  check_element_exists "button marked:'convert miles to km'"
  check_element_exists "label marked:'km result'"
end

Then /^I should be on the °C\/°F screen$/ do
  check_element_exists "textField marked:'celsius input text'"
  check_element_exists "button marked:'convert celsius to fahrenheit'"
  check_element_exists "label marked:'fahrenheit result'"
end

When /^I do nothing$/ do
  check_element_exists("view")
end

Then /^I should see the miles\/km and the °C\/°F converters on the same screen$/ do
    check_element_exists "textField marked:'miles input text'"
    check_element_exists "button marked:'convert miles to km'"
    check_element_exists "label marked:'km result'"
    check_element_exists "textField marked:'celsius input text'"
    check_element_exists "button marked:'convert celsius to fahrenheit'"
    check_element_exists "label marked:'fahrenheit result'"
end