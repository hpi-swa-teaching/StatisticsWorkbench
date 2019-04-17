testing
testMax

	self assert: 3 equals: (self data maximum: 1).
	self assert: 3 equals: (self data maximum: 2).
	self should: [self data maximum: 3] raise: SWInvalidDimensionError.
	self should: [self data maximum: 0] raise: SWInvalidDimensionError