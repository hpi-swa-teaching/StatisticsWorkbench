as yet unclassified
testAdd

	| data newDate |
	data := SWDataTests createSeeded.
	newDate := SWDate fromArray: #(5 5).
	data add: newDate.
	
	self assert: [ (data at: #(5 5)) = newDate ].
	self assert: [ (data size = (SWDataTests createSeeded size + 1 )) ].
	
	self should: [data add: (SWDate fromArray: #(0 1 2 3 4 5)) ] raise: SWInvalidDimensionError