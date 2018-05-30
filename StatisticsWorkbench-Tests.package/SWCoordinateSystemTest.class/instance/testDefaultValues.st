testing
testDefaultValues
	
	self deny: self coordinateSystem xAxis == nil.
	self deny: self coordinateSystem yAxis == nil.
	self assert: coordinateSystem boundsThreshold = SWCoordinateSystem defaultBoundsThreshold.
	self assert: coordinateSystem color = Color white