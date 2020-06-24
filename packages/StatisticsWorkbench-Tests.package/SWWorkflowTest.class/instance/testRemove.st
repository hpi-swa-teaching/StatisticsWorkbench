testing
testRemove

	self workflow add: self node1.
	self workflow add: self node2 after: self node1.
	
	self assert: 2 equals: self workflow size.
	
	self workflow remove: self node2.
	
	self assert: 1 equals: self workflow size.
	self assert: self node1 equals: (self workflow at: 1).
	self should: [self workflow remove: self node2] raise: Error.
	
	self workflow remove: self node1.
	
	self should: [self workflow remove: self node1] raise: Error.
	self assert: 0 equals: self workflow size.
	self should: [self workflow remove: SWNode new] raise: Error
