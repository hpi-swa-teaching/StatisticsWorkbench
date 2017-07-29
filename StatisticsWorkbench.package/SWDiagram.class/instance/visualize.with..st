geometry
visualize: aSWData with: aChart 
	
	self flag: #fishy. "nested if statement"
	(aChart needsCoordinateSystem and: [ self coordinateSystem isNil ])
		ifTrue: [ self hasCoordinateSystem ifFalse: [self add: self createCoordinateSystem]].
	
	self add: aChart.
	
	aChart data: aSWData.
		
	aChart needsCoordinateSystem 
		ifTrue: [self updateCoordinateSystem]
		ifFalse: [self bounds: aChart bounds. "self coordinateSystem hide"].
	
	self updateCharts