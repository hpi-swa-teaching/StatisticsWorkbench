testing
testOutputAndExecute
	| node |
	
	node := SWNode createWith: [true].
	
	self assert: node output isNil.
	
	node execute.
	
	self assert: node output