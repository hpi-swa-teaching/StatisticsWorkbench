as yet unclassified
yAxisMax: aValue
	self hasCoordinateSystem ifTrue: [
		self coordinateSystem yAxis max: aValue].
	self updateCharts