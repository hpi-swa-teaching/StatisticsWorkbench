tests
testGreaterEqual
	
	self assert: [ self date3 >= self date3 and: self date3 > self date2 and: self date3 > self date1 ].
	self assert: self date2 > self date1