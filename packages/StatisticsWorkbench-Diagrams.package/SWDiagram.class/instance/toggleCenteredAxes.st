toggling
toggleCenteredAxes
	
	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem toggleCenteredAxes]
