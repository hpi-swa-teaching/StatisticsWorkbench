testing
testY

	| vector1 vector2 vector3 |
	vector1 := SWVector create: #(1 1).
	vector2 := SWVector create: #(2 2 3).
	vector3 := SWVector create: #(1).
	
	self assert: [ vector1 y = 1].
	self assert: [ vector2 y = 2].
	
	self should: [ vector3 y ] raise: SWInvalidDimensionError
	"message: be creative. design knowledge <3"