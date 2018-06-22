testing
testMaxWithSymbols
	
	self assert: (self data maximum: #x) = 3.
	self assert: (self data maximum: #y) = 3.
	self should: [self data maximum: #z] raise: SWInvalidDimensionError.
	self should: [self data maximum: #a] raise: SWInvalidDimensionError