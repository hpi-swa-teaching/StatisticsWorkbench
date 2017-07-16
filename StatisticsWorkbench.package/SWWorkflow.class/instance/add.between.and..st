as yet unclassified
add: aNode between: aPredecessorNode and: aSuccessorNode

	self add: aNode.
	aPredecessorNode successors add: aNode.
	aNode predecessors add: aPredecessorNode.
	aSuccessorNode predecessors add: aNode.
	aNode successors add: aSuccessorNode