testing
testAddAfter
	
	self workflow add: self node1.
	self workflow add: self node2 after: self node1.
	
	self assert: self node2 equals: (self node1 successors first).
	self assert: self node1 equals: (self node2 predecessors first).
	self assert: self node2 equals: (self workflow at: 2).
	
	self workflow add: self node3 after: self node1.
	
	self assert: self node3 equals: (self node1 successors second).
	self assert: self node1 equals: (self node3 predecessors first).
	self assert: self node3 equals: (self workflow at: 3)
