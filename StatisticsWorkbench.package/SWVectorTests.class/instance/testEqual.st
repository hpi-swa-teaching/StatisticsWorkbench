testing
testEqual
	
	self deny: vector1 = vector2.
	self deny: vector1 = vector3.
	self deny: vector2 = vector3.
	
	self assert: vector1 = vector1.
	self assert: vector2 = vector2.
	self assert: vector3 = vector3.
	
	self should: [ vector1 = vector4 ] raise: SWInvalidDimensionError 	
