tests
testIdentity
	
	self assert: self date1 == self date1.
	self deny: date1 == date2.
	self assert: date1 ~~ date2.
	self deny: date1 == date3