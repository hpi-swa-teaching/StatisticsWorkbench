as yet unclassified
xAxisMax: aValue

	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem xAxis max: aValue].
	self updateCharts