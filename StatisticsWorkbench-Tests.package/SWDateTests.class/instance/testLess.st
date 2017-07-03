as yet unclassified
testLess

	| date1 date2 date3 |
	date1 := SWDate create: #(0 0).
	date2 := SWDate create: #(0 1).
	date3 := SWDate create: #(1 1).
	
	self assert: [ date2 < date3 and: [ date1 < date3 ]  ].
	self assert: [ date1 < date2 ]