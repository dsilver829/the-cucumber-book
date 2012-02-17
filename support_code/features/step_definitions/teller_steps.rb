When /^I withdraw (#{CAPTURE_CASH_AMOUNT})$/ do |amount|
	teller.withdraw_from(my_account, amount)
end
