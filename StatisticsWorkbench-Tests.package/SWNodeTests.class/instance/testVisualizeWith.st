tests
testVisualizeWith

	| node1 node2 |
	node1 := SWNode new 
						output: SWDataTests createSeeded;
						yourself.
	self assert: (node1 visualizeWith: SWBarGraph new) class = SWDiagram.
	
	node2 := SWNode new output: 5; yourself.
	self assert: (node2 visualizeWith: SWBarGraph new) = node2 output