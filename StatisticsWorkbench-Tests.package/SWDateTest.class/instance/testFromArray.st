tests
testFromArray
	
	| date1 date2 |
	date1 := SWDate create: #(1 2).
	date2 := SWDate create: #(1 2 3).
	
	self assert: date1 key = (SWVector create: #(1 2)).
	self assert: date2 key = (SWVector create: #(1 2 3))