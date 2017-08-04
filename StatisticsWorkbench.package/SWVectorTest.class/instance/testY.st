testing
testY

	| vector5 |
	vector5 := SWVector create: #(1).
	
	self assert: self vector1 y = 0.
	self assert: self vector2 y = 1.
	self assert: self vector3 y = 1.
	self assert: self vector4 y = 2.
	
	self should: [ vector5 y ] raise: SWInvalidDimensionError