testing
testAddBefore

	self workflow add: self node1.
	self workflow add: self node2 before: self node1.
	
	self assert: (self workflow at: 2) = self node2.
	self assert: self node1 predecessors size = 1.
	self assert: (self node1 predecessors at: 1) = self node2.
	self assert: (self node2 successors at: 1) = self node1.
	self deny: self node1 isStart.
	self assert: node2 isStart.
	
	self workflow add: self node3 before: self node1.
	self assert: (self node1 predecessors size) = 2.
	self assert: (self node1 predecessors at: 2) = self node3.
	self deny: self node1 isStart. 
	self assert: self node3 isStart.

	self should: [ self workflow add: SWNode new before: self node1 ] raise: Notification
	
	