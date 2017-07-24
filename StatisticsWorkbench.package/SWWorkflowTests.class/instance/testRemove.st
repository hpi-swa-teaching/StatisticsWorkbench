as yet unclassified
testRemove

	| workflow node1 node2 |
	
	workflow := SWWorkflow new.
	node1 := SWNode new.
	workflow add: node1.
	node2 := SWNode new.
	workflow add: node2 after: node1.
	
	self assert: [ workflow size = 2 ].
	
	workflow remove: node2.
	
	self assert: [ workflow size = 1 ].
	self assert: [ (workflow at: 1) = node1 ].
	self should: [ workflow remove: node2 ] raise: Error.
	
	workflow remove: node1.
	
	self should: [ workflow remove: node1 ] raise: Error.
	self assert: [ workflow size = 0 ].
	self should: [ workflow remove: SWNode new ] raise: Error