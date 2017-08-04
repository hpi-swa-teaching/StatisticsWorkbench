tests
testMaxAcceptsXandY
	
	self assert: (self data max: #x) = 3.
	self assert: (self data max: #y) = 3.
	
	self should: [ data max: #z ] raise: SWInvalidDimensionError 