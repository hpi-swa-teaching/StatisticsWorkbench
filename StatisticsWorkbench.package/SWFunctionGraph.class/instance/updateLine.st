as yet unclassified
updateLine
	self connected
		ifTrue: [self lineMorph setVertices: 1]
		ifFalse: [self lineMorph setVertices: {0 @ 0}]