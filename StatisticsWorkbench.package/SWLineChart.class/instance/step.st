as yet unclassified
step
	
	self connected 
		ifTrue: [self makeOpen]
		ifFalse: [self makeClosed].
	
	self updateVertices.