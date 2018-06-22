testing
testMinWithSymbols

	self assert: (self data minimum: #x) = 0.
	self assert: (self data minimum: #y) = 0.
	self should: [self data minimum: #z] raise: SWInvalidDimensionError.
	self should: [self data minimum: #a] raise: SWInvalidDimensionError