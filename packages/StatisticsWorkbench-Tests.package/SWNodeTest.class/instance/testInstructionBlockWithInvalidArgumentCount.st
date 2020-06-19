testing
testInstructionBlockWithInvalidArgumentCount

	| noArgument |
	
	noArgument := SWNode createWith: [true].
	noArgument predecessors add: (SWNode new output: 1; yourself).
	self should: [noArgument execute] raise: SWInvalidArgumentError.
	noArgument predecessors add: (SWNode new output: 2; yourself).
	self should: [noArgument execute] raise: SWInvalidArgumentError
