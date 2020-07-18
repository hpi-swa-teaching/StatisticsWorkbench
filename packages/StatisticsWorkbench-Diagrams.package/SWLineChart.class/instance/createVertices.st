creation
createVertices

	| newVertices |

	newVertices := OrderedCollection new.
	self data do: [:vector | newVertices add: (self coordinateSystem positionFor: vector asPoint)].
	
	^ newVertices
