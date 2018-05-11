testing
testCreateWith

	self assert: (SWVector create: #(0) with: 10) notNil.
	self assert: (SWVector create: #(0 1) with: 30) notNil.
	self assert: (SWVector create: #(0 1 2) with: 50) notNil.
	
	self should: [ (SWVector create: #() with: 10) ] raise: SWInvalidDimensionError. 
	self should: [ (SWVector create: #(10 10) with: 0) ] raise: SWInvalidArgumentError.
	self should: [ (SWVector create: #(10 10) with: -5) ] raise: SWInvalidArgumentError