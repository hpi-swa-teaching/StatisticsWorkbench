geometry
xAxisMax: aValue

	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem xAxis maximum: aValue].
	self updateCharts