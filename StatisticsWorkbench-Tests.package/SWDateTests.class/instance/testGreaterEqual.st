as yet unclassified
testGreaterEqual

	| date1 date2 date3 |
	date1 := SWDate fromArray: #(0 0).
	date2 := SWDate fromArray: #(0 1).
	date3 := SWDate fromArray: #(1 1).
	
	self assert: [ date3 >= date3 and: [date3 > date2 and: [ date3 > date1 ]  ]].
	self assert: [ date2 > date1 ]