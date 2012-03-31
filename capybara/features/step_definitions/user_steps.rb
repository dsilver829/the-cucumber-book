Given /^there is a User$/ do
  Factory(:user)
end

Given /^the User has posted the message "([^"]*)"$/ do |message_text|
  User.count.should == 1
  Factory(:message, :content => message_text, :user => User.first)
end

Given /^a User has posted the following messages:$/ do |messages|
  user = Factory(:user)
  messages_attributes = messages.hashes.map do |message_attrs|
    message_attrs.merge({:user_id => user.id})
  end
  Message.create!(messages_attributes)
end

When /^I visit the page for the User$/ do
  User.count.should == 1
  visit(user_path(User.first))
end