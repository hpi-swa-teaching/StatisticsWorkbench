toggling
uncenterAxes

	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem centeredAxes: false]
