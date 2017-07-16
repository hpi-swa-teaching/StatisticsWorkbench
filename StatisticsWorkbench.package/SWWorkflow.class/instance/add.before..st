as yet unclassified
add: aNode before: aSuccessorNode

	self add: aNode.
	aSuccessorNode predecessors add: aNode.
	aNode successors add: aSuccessorNode