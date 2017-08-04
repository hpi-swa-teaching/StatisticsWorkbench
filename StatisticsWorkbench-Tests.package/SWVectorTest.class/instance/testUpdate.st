testing
testUpdate

	| vector5 |
	vector5 := SWVector create: #(1 2 3).
	
	self vector1 update: #(5 5).
	self assert: self vector1 = (SWVector create: #(5 5)).
	
	vector5 update: #(1 2 3).
	self deny: vector5 = (SWVector create: #(2 2 2)).
	
	self should: [ self vector1 update: #(1 2 3)] raise: SWInvalidDimensionError.
	self should: [ vector5 update: #(1 2)] raise: SWInvalidDimensionError 