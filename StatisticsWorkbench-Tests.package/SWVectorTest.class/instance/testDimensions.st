testing
testDimensions
	| vector5 |
	
	vector5 := SWVector create: #(1 2 3 4).
	
	self assert: self vector1 dimensions = 2.
	self assert: self vector4 dimensions = 3.
	self assert: vector5 dimensions = 4