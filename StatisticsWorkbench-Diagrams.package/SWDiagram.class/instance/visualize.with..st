geometry
visualize: aSWData with: aChart 
	
	(aChart needsCoordinateSystem and: [self hasCoordinateSystem not])
		ifTrue: [self add: self createCoordinateSystem].
	
	self add: aChart.
	self halt.
	aChart diagram: self.
	aChart data: aSWData.
		
	aChart needsCoordinateSystem 
		ifTrue: [self updateCoordinateSystem]
		ifFalse: [self bounds: aChart bounds].
		
	self updateCharts