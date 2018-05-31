geometry
xAxisStepInterval: aValue

	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem xAxis stepInterval: aValue].
	self updateCharts