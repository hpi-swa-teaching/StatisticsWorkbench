as yet unclassified
testInstructionBlockGetsCalled
	
	| instructionBlock flag node |
	flag := false.
	instructionBlock := [ flag := true ].
	
	(SWNode create: instructionBlock with: 'Unit Testing') execute. 
	
	self assert: [ flag ] 