as yet unclassified
testDimensions

	| vector1 vector2 vector3 |
	vector1 := SWVector create: #(1 2).
	vector2 := SWVector create. #(1 2 3).
	vector3 := SWVector create: #(1 2 3 4).
	
	self assert: [ vector1 dimensions = 2 ].
	self assert: [ vector2 dimensions = 3 ].
	self assert: [ vector3 dimensions = 4]