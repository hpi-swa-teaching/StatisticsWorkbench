geometry
yAxisMin: aValue

	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem yAxis min: aValue].
	self updateCharts