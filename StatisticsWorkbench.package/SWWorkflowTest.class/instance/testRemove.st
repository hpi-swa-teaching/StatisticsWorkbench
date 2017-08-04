testing
testRemove

	self workflow add: self node1.
	self workflow add: self node2 after: self node1.
	
	self assert: self workflow size = 2.
	
	self workflow remove: self node2.
	
	self assert: self workflow size = 1.
	self assert: (self workflow at: 1) = self node1.
	self should: [ self workflow remove: self node2 ] raise: Error.
	
	self workflow remove: self node1.
	
	self should: [ self workflow remove: self node1 ] raise: Error.
	self assert: self workflow size = 0.
	self should: [ self workflow remove: SWNode new ] raise: Error