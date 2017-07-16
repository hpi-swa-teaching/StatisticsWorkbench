as yet unclassified
testAdd

	| workflow node1 node2 |
	
	workflow := SWWorkflow new.
	
	self assert: [ workflow size = 0 ].
	
	node1 := SWNode new.
	workflow add: node1.
	
	self assert: [ workflow size = 1 ].
	self assert: [ (workflow at: 1) = node1 ].
	
	node2 := SWNode new.
	workflow add: node2.
	
	self assert: [ workflow size = 2 ].
	self assert: [ (workflow at: 2) = node2 ]