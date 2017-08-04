tests
testLessEqual
	
	self assert: [ self date3 <= self date3 and: self date2 < self date3 and: self date1 < self date3 ].
	self assert: self date1 < self date2