tests
testInput

	| input node |
	
	input := 'test input'.
	
	node := SWNode createWith: [] labelled: 'Unit Testing'.
	node predecessors add: (SWNode new output: input; yourself).
	
	self assert: node input size = 1.
	self assert: (node input at: 1) = input 