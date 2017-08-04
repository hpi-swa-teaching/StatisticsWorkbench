tests
testAt
	
	" There points are available "
	self assert: (self data at: #(0 1)) notNil.
	self assert: (self data at: #(1 1)) notNil.
	self assert: (self data at: #(1 3)) notNil.
	self assert: (self data at: #(3 0)) notNil.
	
	" These points aren't contained "
	self assert: (self data at: #(0 0)) isNil.
	self assert: (self data at: #(2 0)) isNil.
	self assert: (self data at: #(3 1)) isNil.
	self assert: (self data at: #(1 2)) isNil.
	
	" Invalid dimension requested "
	self should: [ (self data at: #(1 2 3)) ] raise: SWInvalidDimensionError.
	self should: [ (self data at: #(1)) ] raise: SWInvalidDimensionError 