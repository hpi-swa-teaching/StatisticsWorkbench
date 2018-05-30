testing
testAdd
	| newVector |
	
	newVector := SWVector fromArray: #(5 5).
	self data add: newVector.
	
	self assert: self data size = (self originalDataSize + 1).
	self should: [self data add: #(0 1 2 3 4 5)] raise: SWInvalidDimensionError