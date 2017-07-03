as yet unclassified
testX

	| vector1 vector2 |
	vector1 := SWVector create: #(1 1).
	vector2 := SWVector create: #(2 2 3).
	
	self assert: [ vector1 x = 1].
	self assert: [ vector2 x = 2]