testing
testMax

	self assert: (self data maximum: 1) = 3.
	self assert: (self data maximum: 2) = 3.
	self should: [self data maximum: 3] raise: SWInvalidDimensionError.
	self should: [self data maximum: 0] raise: SWInvalidDimensionError