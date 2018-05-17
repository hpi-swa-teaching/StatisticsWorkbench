tests
testMin
	self assert: (self data min: 1) = 0.
	self assert: (self data min: 2) = 0.
	self should: [ self data min: 3 ] raise: SWInvalidDimensionError.
	self should: [ self data min: 0 ] raise: SWInvalidDimensionError