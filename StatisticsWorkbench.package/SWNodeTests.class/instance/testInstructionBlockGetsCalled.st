as yet unclassified
testInstructionBlockGetsCalled
	
	| instructionBlock flag node |
	flag := false.
	instructionBlock := [ flag := true ].
	
	(SWNode createWith: instructionBlock labelled: 'Unit Testing') execute. 
	
	self assert: [ flag ] 