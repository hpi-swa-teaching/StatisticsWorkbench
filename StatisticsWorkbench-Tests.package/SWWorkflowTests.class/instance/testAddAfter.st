as yet unclassified
testAddAfter
	
	| workflow node1 node2 node3 |
	
	workflow := SWWorkflow new.

	node1 := SWNode new.
	workflow add: node1.
	
	node2 := SWNode new.
	workflow add: node2 after: node1.
	
	self assert: [ (node1 successors at: 1) = node2 ].
	self assert: [ (node2 predecessors at: 1) = node1 ].
	self assert: [ (workflow at: 2) = node2 ].
	
	node3 := SWNode new.
	workflow add: node3 after: node1.
	
	self assert: [ (node1 successors at: 2) = node3 ].
	self assert: [ (node3 predecessors at: 1) = node1 ].
	self assert: [ (workflow at: 3) = node3 ]
	