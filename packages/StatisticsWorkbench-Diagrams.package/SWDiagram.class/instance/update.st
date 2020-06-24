updating
update

	self updateCharts.
	
	(self hasCoordinateSystem)
		ifTrue: [self updateCoordinateSystem]
