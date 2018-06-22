geometry
yAxisMin: aValue

	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem yAxis minimum: aValue].
	self updateCharts