as yet unclassified
createVertices

	^ self data collect: [:vector | (self coordinateSystem positionsFor: vector)]