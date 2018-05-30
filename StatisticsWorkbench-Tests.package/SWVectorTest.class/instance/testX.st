testing
testX
	
	self assert: self vector1 x = 0.
	self assert: self vector2 x = 0.
	self assert: self vector3 x = 1.
	
	self should: [self vector4 x] raise: SWInvalidDimensionError