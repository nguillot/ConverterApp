# encoding: utf-8

When /^I fill in  'miles input text' with (\d+)$/ do |arg1|
  set_text("textField marked:'miles input text'", arg1)
end

When /^I touch the 'convert miles to km' button$/ do
  tap "button marked:'convert miles to km'"
end

Then /^I should see (.*?) in 'km result'$/ do |arg1|
#on vérifie que l'élément 'km result' contient le texte voulut
  check_element_exists("label marked:'km result' text:'"+arg1+"'")
end


