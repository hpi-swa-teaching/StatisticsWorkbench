testing
testMinWithSymbols

	self assert: 0 equals: (self data minimum: #x).
	self assert: 0 equals: (self data minimum: #y).
	self should: [self data minimum: #z] raise: SWInvalidDimensionError.
	self should: [self data minimum: #a] raise: SWInvalidDimensionError