creation
createVertices
	| newVertices |
	
	self flag: #fishy.
	
	newVertices := OrderedCollection new.
	
	self data do: [ :date |
		newVertices add: 
							(self coordinateSystem positionFor: date key asPoint x @ date key asPoint y)
	].

	^ newVertices