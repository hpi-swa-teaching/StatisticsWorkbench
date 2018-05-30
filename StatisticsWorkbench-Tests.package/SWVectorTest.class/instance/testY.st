testing
testY
	| vector5 |
	
	vector5 := SWVector create: #(1).
	
	self assert: self vector1 y = 0.
	self assert: self vector2 y = 1.
	self assert: self vector3 y = 1.
	
	self should: [self vector4 y] raise: SWInvalidDimensionError.
	self should: [vector5 y] raise: SWInvalidDimensionError