testing
testMax

	self assert: (self data max: 1) = 3.
	self assert: (self data max: 2) = 3.
	self should: [self data max: 3] raise: SWInvalidDimensionError.
	self should: [self data max: 0] raise: SWInvalidDimensionError