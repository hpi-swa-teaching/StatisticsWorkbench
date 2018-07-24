testing
testCreateWith
	| instructionBlock node |
	
	instructionBlock := [true]. 
	node := SWNode createWith: instructionBlock labelled: 'Unit Testing'.
	
	self assert: node notNil.
	self assert: instructionBlock equals: node instruction.
	self assert: 'Unit Testing' equals: node label