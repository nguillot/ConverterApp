# encoding: utf-8

When /^I fill in  'celsius input text' with (\d+)$/ do |arg1|
  set_text("textField marked:'celsius input text'", arg1)
end

When /^I touch the 'convert celsius to fahrenheit' button$/ do
  tap "button marked:'convert celsius to fahrenheit'"
end

Then /^I should see (.*?)°F in 'fahrenheit result'$/ do |arg1|
#on vérifie que l'élément fahrenheit resul' contient le texte voulut
  check_element_exists("label marked:'fahrenheit resul' text:'"+arg1+"'")
end
