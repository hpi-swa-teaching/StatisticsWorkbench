testing
testSize

	self assert: 0 equals: self workflow size.
	
	self workflow add: self node1.
	self assert: 1 equals: self workflow size.
	
	self workflow add: self node2 after: self node1.
	self assert: 2 equals: self workflow size.
	
	self workflow remove: self node1.
	self assert: 1 equals: self workflow size.
	
	self workflow remove: self node2.
	self assert: 0 equals: self workflow size
