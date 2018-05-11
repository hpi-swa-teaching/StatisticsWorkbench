tests
testMaxWithSymbols
	
	self assert: (self data max: #x) = 3.
	self assert: (self data max: #y) = 3.
	self should: [self data max: #z] raise: SWInvalidDimensionError.
	self should: [self data max: #a] raise: SWInvalidDimensionError.