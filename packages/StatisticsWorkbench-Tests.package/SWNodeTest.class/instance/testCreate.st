testing
testCreate

	| instructionBlock node |
	
	instructionBlock := [true]. 
	node := SWNode createWith: instructionBlock.
	
	self assert: node notNil.
	self assert: instructionBlock equals: node instruction
