testing
testBoundsThreshold
	| oldBounds |
	
	oldBounds := coordinateSystem boundsThreshold.
	coordinateSystem boundsThreshold: oldBounds + SWCoordinateSystem defaultBoundsThreshold.
	self deny: oldBounds = coordinateSystem boundsThreshold