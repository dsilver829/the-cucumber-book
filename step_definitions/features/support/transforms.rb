CAPTURE_CASH_AMOUNT = Transform /^\$(\d+)$/ do |number|
	number.to_i
end
