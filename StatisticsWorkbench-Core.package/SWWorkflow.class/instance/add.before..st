as yet unclassified
add: aNode before: aSuccessorNode
	
	aSuccessorNode predecessors size > 0
		ifTrue: [ Notification signal: 'This node already got an input. Are you sure you want to add another input instead of adding this node between two nodes?' ].
		
	aSuccessorNode predecessors add: aNode.
	aNode successors add: aSuccessorNode.
	self add: aNode