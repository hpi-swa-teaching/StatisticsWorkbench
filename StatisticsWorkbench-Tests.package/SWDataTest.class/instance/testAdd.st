tests
testAdd

	| newDate |
	newDate := SWDate fromArray: #(5 5).
	self data add: newDate.
	
	self assert: (self data at: #(5 5)) = newDate.
	self assert: self data size = (self originalDataSize + 1 ).
	self should: [ self data add: #(0 1 2 3 4 5) ] raise: SWInvalidDimensionError