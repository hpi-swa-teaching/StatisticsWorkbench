tests
testMinWithSymbols
	self assert: (self data min: #x) = 0.
	self assert: (self data min: #y) = 0.
	self should: [self data min: #z] raise: SWInvalidDimensionError.
	self should: [self data min: #a] raise: SWInvalidDimensionError.