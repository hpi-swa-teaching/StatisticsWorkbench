testing
testAdd
	
	self assert: self workflow size = 0.
	
	self workflow add: self node1.
	
	self assert: self workflow size = 1.
	self assert: (self workflow at: 1) = self node1.
	
	self workflow add: self node2 after: self node1.
	
	self assert: self workflow size = 2.
	self assert: (self workflow at: 2) = self node2.
	
	" Error if node does not have any predecessors or successors "
	self should: [ self workflow add: SWNode new ] raise: SWInvalidArgumentError 