creation
createVertices

	^ self data collect: [:vector | self coordinateSystem positionFor: vector asPoint]
	
