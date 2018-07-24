testing
testInput
	| input node |
	
	input := 'test input'.
	
	node := SWNode createWith: [] labelled: 'Unit Testing'.
	node predecessors add: (SWNode new output: input; yourself).
	
	self assert: 1 equals: node input size.
	self assert: input equals: (node input first)