# encoding: utf-8

When /^I fill in  'celsius input text' with (.*?)$/ do |arg1|
  wait_for(:timeout => 5) { element_exists("textField marked:'celsius input text'") }
  set_text("textField marked:'celsius input text'", arg1)
end

When /^I touch the 'convert celsius to fahrenheit' button$/ do
  tap "convert celsius to fahrenheit"
end

Then /^I should see (.*?) in 'fahrenheit result'$/ do |arg1|
#on vérifie que l'élément fahrenheit resul' contient le texte voulut
  wait_for(:timeout => 5) { element_exists("label marked:'fahrenheit result' text:'"+arg1+"'") }
end
