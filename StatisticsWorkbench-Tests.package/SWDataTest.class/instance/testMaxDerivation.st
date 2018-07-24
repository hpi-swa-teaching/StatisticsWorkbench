testing
testMaxDerivation

	self data removeArray: #(1 1).
	self assert: 2 equals: (self data maxDerivation: 2).
	self should: [self data maxDerivation: 3] raise: SWInvalidDimensionError