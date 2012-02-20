Then /^(#{CAPTURE_CASH_AMOUNT}) should be dispensed$/ do |amount|
	cash_slot.contents.should == amount
end
