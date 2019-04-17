testing
testAddBefore

	self workflow add: self node1.
	self workflow add: self node2 before: self node1.
	
	self assert: self node2 equals: (self workflow at: 2).
	self assert: 1 equals: self node1 predecessors size.
	self assert: self node2 equals: (self node1 predecessors first).
	self assert: self node1 equals: (self node2 successors first).
	self assert: self node2 isStart.
	self deny: self node1 isStart.
	
	self workflow add: self node3 before: self node1.
	self assert: 2 equals: (self node1 predecessors size).
	self assert: self node3 equals: (self node1 predecessors second).
	self assert: self node3 isStart.
	self deny: self node1 isStart.  

	self should: [self workflow add: SWNode new before: self node1] raise: Notification