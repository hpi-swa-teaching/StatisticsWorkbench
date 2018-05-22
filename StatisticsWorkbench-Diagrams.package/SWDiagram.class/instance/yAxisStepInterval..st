as yet unclassified
yAxisStepInterval: aValue

	self hasCoordinateSystem 
		ifTrue: [self coordinateSystem yAxis stepInterval: aValue].
	self updateCharts