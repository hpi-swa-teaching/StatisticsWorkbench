testing
testMean
	
	self assert: (5 / 4) equals: (self data mean: 1).
	self assert: (5 / 4) equals: self data meanX.
	self assert: (5 / 4) equals: (self data mean: 2).
	self assert: (5 / 4) equals: self data meanY
