testing
testAsPoint

	self assert: self vector1 asPoint x = 0.
	self assert: self vector1 asPoint y = 0.
	self assert: self vector1 asPoint isPoint.
	
	self assert: self vector2 asPoint isPoint.
	
	self should: [self vector4 asPoint] raise: SWInvalidDimensionError
