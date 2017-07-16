as yet unclassified
add: aNode after: aPredecessorNode

	self add: aNode.
	aPredecessorNode successors add: aNode.
	aNode predecessors add: aPredecessorNode