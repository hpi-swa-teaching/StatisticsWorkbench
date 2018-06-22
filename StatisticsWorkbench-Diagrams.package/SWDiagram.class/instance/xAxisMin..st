geometry
xAxisMin: aValue

	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem xAxis minimum: aValue].
	self updateCharts