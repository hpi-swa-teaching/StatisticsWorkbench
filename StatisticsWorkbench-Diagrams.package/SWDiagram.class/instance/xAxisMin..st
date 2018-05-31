geometry
xAxisMin: aValue

	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem xAxis min: aValue].
	self updateCharts