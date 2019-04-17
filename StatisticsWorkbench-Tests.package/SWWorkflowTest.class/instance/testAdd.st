testing
testAdd
	
	self assert: 0 equals: self workflow size.
	
	self workflow add: self node1.
	
	self assert: 1 equals: self workflow size.
	self assert: self node1 equals: (self workflow at: 1).
	
	self workflow add: self node2 after: self node1.
	
	self assert: 2 equals: self workflow size.
	self assert: self node2 equals: (self workflow at: 2).
	
	"Error if node does not have any predecessors or successors."
	self should: [self workflow add: SWNode new] raise: SWInvalidArgumentError