as yet unclassified
generateVertices
	| newVertices |
	
	newVertices := OrderedCollection new.
	
	self data keysAndValuesDo: [:xValue :yValue |
		newVertices add: (self coordinateSystem positionFor: xValue @ yValue)
	].

	^ newVertices