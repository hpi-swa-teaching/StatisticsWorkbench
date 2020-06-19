testing
testMaxWithSymbols
	
	self assert: 3 equals: (self data maximum: #x).
	self assert: 3 equals: (self data maximum: #y).
	self should: [self data maximum: #z] raise: SWInvalidDimensionError.
	self should: [self data maximum: #a] raise: SWInvalidDimensionError
