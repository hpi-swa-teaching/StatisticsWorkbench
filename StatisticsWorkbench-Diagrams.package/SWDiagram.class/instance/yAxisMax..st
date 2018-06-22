geometry
yAxisMax: aValue

	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem yAxis maximum: aValue].
	self updateCharts