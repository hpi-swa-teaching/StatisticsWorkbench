testing
testInstructionBlockGetsCalled	
	| instructionBlock flag |
	
	flag := false.
	instructionBlock := [flag := true].
	
	(SWNode createWith: instructionBlock labelled: 'Unit Testing') execute. 
	
	self assert: flag