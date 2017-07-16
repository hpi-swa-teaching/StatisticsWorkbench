as yet unclassified
testAt

	| workflow node1 node2 |
	
	workflow := SWWorkflow new.
	node1 := SWNode new.
	workflow add: node1.
	
	self assert: [ (workflow at: 1) = node1 ].
	
	node2 := SWNode new.
	workflow add: node2.
	
	self assert: [ (workflow at: 1) = node1 ].
	self assert: [ (workflow at: 2) = node2 ].
	self should: [ workflow at: 3 ] raise: Error.
	self should: [ workflow at: 0 ] raise: Error