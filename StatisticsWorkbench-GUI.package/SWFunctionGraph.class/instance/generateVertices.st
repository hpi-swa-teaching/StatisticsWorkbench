as yet unclassified
generateVertices
	| newVertices |
	
	newVertices := Bag new.
	
	self dataset keysAndValuesDo: [:xValue :yValue |
		newVertices add: (self coordinateSystem positionFor: xValue @ yValue)
	].

	^ newVertices