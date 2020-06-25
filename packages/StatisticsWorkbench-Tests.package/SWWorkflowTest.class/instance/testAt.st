testing
testAt

	self workflow add: self node1.
	
	self assert: self node1 equals: (self workflow at: 1).
	self workflow add: self node2 after: self node1.
	
	self assert: self node1 equals: (self workflow at: 1).
	self assert: self node2 equals: (self workflow at: 2).
	self should: [self workflow at: 3] raise: Error.
	self should: [self workflow at: 0] raise: Error
