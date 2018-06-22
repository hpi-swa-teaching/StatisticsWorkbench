testing
testMin

	self assert: (self data minimum: 1) = 0.
	self assert: (self data minimum: 2) = 0.
	self should: [self data minimum: 3] raise: SWInvalidDimensionError.
	self should: [self data minimum: 0] raise: SWInvalidDimensionError