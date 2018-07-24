testing
testMin

	self assert: 0 equals: (self data minimum: 1).
	self assert: 0 equals: (self data minimum: 2).
	self should: [self data minimum: 3] raise: SWInvalidDimensionError.
	self should: [self data minimum: 0] raise: SWInvalidDimensionError