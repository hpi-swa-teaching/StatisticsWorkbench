testing
testBoundsThreshold

	| oldBounds |
	
	oldBounds := self coordinateSystem boundsThreshold.
	self coordinateSystem boundsThreshold: oldBounds + SWCoordinateSystem defaultBoundsThreshold.
	self deny: oldBounds = self coordinateSystem boundsThreshold
