tests
testEqual
	
	self assert: self date1 = self date1.
	self assert: self date2 = self date2.
	self assert: self date3 = self date3.
	
	self deny: self date1 = self date2.
	self deny: self date1 = self date3.
	self deny: self date2 = self date3.
	self assert: self date1 = self date1 copy