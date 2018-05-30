testing
testCreate
	| instructionBlock node |
	
	instructionBlock := [true]. 
	node := SWNode createWith: instructionBlock.
	
	self assert: node notNil.
	self assert: node instruction = instructionBlock