testing
testSize

	self assert: self workflow size = 0.
	
	self workflow add: self node1.
	self assert: self workflow size = 1.
	
	self workflow add: self node2 after: self node1.
	self assert: self workflow size = 2.
	
	self workflow remove: self node1.
	self assert: self workflow size = 1.
	
	self workflow remove: self node2.
	self assert: self workflow size = 0