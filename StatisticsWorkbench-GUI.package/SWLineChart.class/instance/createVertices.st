creation
createVertices
	| newVertices |
	
	self flag: #fishy.
	
	newVertices := OrderedCollection new.
	
	self data do: [ :vector |
		newVertices add: 
							(self coordinateSystem positionFor: vector asPoint)
	].

	^ newVertices