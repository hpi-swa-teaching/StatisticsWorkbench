visualization
createVertices

	^ self data collect: [:vector | (self coordinateSystem positionsFor: vector)]