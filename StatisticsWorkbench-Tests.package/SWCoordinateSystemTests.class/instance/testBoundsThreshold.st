as yet unclassified
testBoundsThreshold

	|coordinateSystem oldBounds|
	
	coordinateSystem := SWCoordinateSystem create.
	oldBounds := coordinateSystem boundsThreshold.
	coordinateSystem boundsThreshold: oldBounds + (10@10).
	self assert: [(oldBounds = coordinateSystem boundsThreshold) not]
	
	