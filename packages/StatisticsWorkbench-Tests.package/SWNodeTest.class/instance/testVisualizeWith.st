testing
testVisualizeWith

	| node1 node2 |
	
	node1 := SWNode new 
						output: SWDataTest createSeeded;
						yourself.
	self assert: SWDiagram equals: (node1 visualizeWith: SWBarGraph new) class.
	
	node2 := SWNode new 
						output: 5; 
						yourself.
	self assert: node2 output equals: (node2 visualizeWith: SWBarGraph new)
