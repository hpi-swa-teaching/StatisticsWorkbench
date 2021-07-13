geometry
extent: aPoint

	super extent: aPoint.
	self resizeCharts.
	(self hasLegend)
		ifTrue:[self updateLegend.self updateLegend].
	(self hasCoordinateSystem)
		ifTrue: [self coordinateSystem extent: aPoint].
	(self hasChart)
		ifTrue: [self updateCharts]
