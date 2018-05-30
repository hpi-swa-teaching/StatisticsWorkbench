testing
testCreate

	self assert: (SWVector create: #(0)) notNil.
	self assert: (SWVector create: #(0 1)) notNil.
	self assert: (SWVector create: #(0 1 2)) notNil.
	
	self should: [(SWVector create: #())] raise: SWInvalidDimensionError