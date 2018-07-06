testing
testDefaultValues
	
	self deny: self coordinateSystem xAxis isNil.
	self deny: self coordinateSystem yAxis isNil.
	self assert: coordinateSystem boundsThreshold = SWCoordinateSystem defaultBoundsThreshold.
	self assert: coordinateSystem color = Color white