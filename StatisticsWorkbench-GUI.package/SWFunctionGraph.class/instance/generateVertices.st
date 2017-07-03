as yet unclassified
generateVertices
	| newVertices |
	
	newVertices := OrderedCollection new.
	
	self data do: [ :date |
		newVertices add: 
							(self coordinateSystem positionFor: date key asPoint x @ date key asPoint y)
	].

	^ newVertices