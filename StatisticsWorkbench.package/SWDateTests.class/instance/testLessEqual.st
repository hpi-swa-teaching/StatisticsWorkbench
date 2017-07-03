as yet unclassified
testLessEqual

	| date1 date2 date3 |
	date1 := SWDate fromArray: #(0 0).
	date2 := SWDate fromArray: #(0 1).
	date3 := SWDate fromArray: #(1 1).
	
	self assert: [ date3 <= date3 and: [date2 < date3 and: [ date1 < date3 ]  ]].
	self assert: [ date1 < date2 ]