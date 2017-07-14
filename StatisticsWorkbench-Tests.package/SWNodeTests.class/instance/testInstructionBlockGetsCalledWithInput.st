as yet unclassified
testInstructionBlockGetsCalledWithInput
	
	| instructionBlock c node |
	instructionBlock := [:a :b | c := a + b ].
	
	node := SWNode create: instructionBlock with: 'Unit Testing'.
	node predecessors add: (SWNode new output: 2; yourself).
	node predecessors add: (SWNode new output: 6; yourself).
	
	node execute.
	
	self assert: [ c = 8 ] 