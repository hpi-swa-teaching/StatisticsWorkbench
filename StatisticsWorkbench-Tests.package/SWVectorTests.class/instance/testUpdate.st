as yet unclassified
testUpdate

	| vector1 vector2 |
	vector1 := SWVector create: #(1 2).
	vector2 := SWVector create: #(1 2 3).
	
	vector1 update: #(5 5).
	self assert: [ vector1 = (SWVector create: #(5 5)) ].
	
	vector2 update: #(1 2 3).
	self assert: [ vector2 := (SWVector create: #(2 2 2)) ].
	
	self should: [ vector1 update: #(1 2 3)] raise: SWInvalidDimensionError.
	self should: [ vector2 update: #(1 2)] raise: SWInvalidDimensionError 