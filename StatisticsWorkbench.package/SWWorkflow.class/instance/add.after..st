adding/removing
add: aNode after: aPredecessorNode

	aPredecessorNode successors add: aNode.
	aNode predecessors add: aPredecessorNode.
	self add: aNode