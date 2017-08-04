testing
testAddAfter
	
	self workflow add: self node1.
	self workflow add: self node2 after: self node1.
	
	self assert: (self node1 successors at: 1) = self node2.
	self assert: (self node2 predecessors at: 1) = self node1.
	self assert: (self workflow at: 2) = self node2.
	
	self workflow add: self node3 after: self node1.
	
	self assert: (self node1 successors at: 2) = self node3.
	self assert: (self node3 predecessors at: 1) = self node1.
	self assert: (self workflow at: 3) = self node3
	