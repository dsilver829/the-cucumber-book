Given /^the input "([^"]*)"$/ do |input|
  steps %{
    Given a file named "input.txt" with:
    """
      #{input}
    """
  }
end

When /^the calculator is run$/ do
  steps %{
    When I run `calculator input.txt`
  }
end

Then /^the output should be "([^"]*)"$/ do |output|
  steps %{
    Then it should pass with:
    """
    #{output}
    """
  }
end
