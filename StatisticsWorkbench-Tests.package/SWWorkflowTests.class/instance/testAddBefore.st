as yet unclassified
testAddBefore

	| workflow node1 node2 node3 |
	workflow := SWWorkflow new.
	node1 := SWNode new.
	node2 := SWNode new.
	node3 := SWNode new.
	
	workflow add: node1.

	workflow add: node2 before: node1.
	
	self assert: [ (workflow at: 2) = node2 ].
	self assert: [ node1 predecessors size = 1 ].
	self assert: [ (node1 predecessors at: 1) = node2 ].
	self assert: [ (node2 successors at: 1) = node1 ].
	self assert: [ node1 isStart not ].
	self assert: [ node2 isStart ].
	
	workflow add: node3 before: node1.
	self assert: [ (node1 predecessors size) = 2 ].
	self assert: [ (node1 predecessors at: 2) = node3 ].
	self assert: [ node1 isStart not ]. 
	self assert: [ node3 isStart ].

	self flag: #fishy.
	self should: [ workflow add: SWNode new before: node1 ] raise: Notification
	
	