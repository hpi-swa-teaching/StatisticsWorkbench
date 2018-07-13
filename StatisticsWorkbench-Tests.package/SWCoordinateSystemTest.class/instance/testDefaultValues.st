testing
testDefaultValues
	
	self deny: self coordinateSystem xAxis isNil.
	self deny: self coordinateSystem yAxis isNil.
	self assert: self coordinateSystem boundsThreshold = SWCoordinateSystem defaultBoundsThreshold.
	self assert: self coordinateSystem color = Color white