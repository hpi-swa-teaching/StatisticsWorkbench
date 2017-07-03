as yet unclassified
testAsPoint

	| vector1 vector2 vector3 |
	vector1 := SWVector create: #(1 1).
	vector2 := SWVector create: #(1 2).
	vector3 := SWVector create: #(1 2 3).
	
	self assert: [ vector1 asPoint x = 1].
	self assert: [ vector1 asPoint y = 1].
	self assert: [ vector1 asPoint isPoint ].
	
	self assert: [ vector2 asPoint isPoint ].
	
	self should: [ vector3 asPoint ] raise: SWInvalidDimensionError 
	"Message for error: In order to convert a vector to a point the vector must be 2-dimensional."