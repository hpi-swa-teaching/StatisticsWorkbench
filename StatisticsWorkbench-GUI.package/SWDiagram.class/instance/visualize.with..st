geometry
visualize: aSWData with: aChart 
	
	self flag: #fishy. "nested if statement"
	(aChart needsCoordinateSystem and: [self coordinateSystem isNil])
		ifTrue: [self hasCoordinateSystem ifFalse: [self add: self createCoordinateSystem]].
	
	self add: aChart.
	
	aChart data: aSWData.
		
	(aChart isMemberOf: SWBarGraph) "needsXAxisSizing" 
		ifTrue: ["self coordinateSystem xAxis delete."self coordinateSystem xAxis toggleTextVisibility. self coordinateSystem xAxis textColor: Color transparent.].
		
	aChart needsCoordinateSystem 
		ifTrue: [self updateCoordinateSystem]
		ifFalse: [self bounds: aChart bounds "self extent: aChart getMaxExtent" "self extent: 800@491"].
		
	self updateCharts