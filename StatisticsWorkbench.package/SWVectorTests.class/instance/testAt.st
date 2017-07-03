as yet unclassified
testAt

	| vector1 vector3 |
	vector1 := SWVector create: #(1 2).
	vector3 := SWVector create: #(1 2 3 4).
	
	self assert: [ vector1 at: 1 = 1 ].
	self assert: [ vector1 at: 2 = 2 ].
	self assert: [ vector3 at: 3 = 3 ].
	self assert: [ vector3 at: 4  = 4]