Given /^the input "([^"]*)"$/ do |input|
  write_file 'input.txt', input
end

When /^the calculator is run$/ do
  run 'calculator input.txt'
end

When /^the calculator is run with no input$/ do
  run_interactive 'calculator'
end

When /^I enter the calculation "([^"]*)"$/ do |calculation|
  type calculation
end

Then /^the output should be "([^"]*)"$/ do |output|
  assert_passing_with output
end
