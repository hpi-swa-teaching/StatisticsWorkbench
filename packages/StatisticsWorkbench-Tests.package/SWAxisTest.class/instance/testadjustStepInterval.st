testing
testadjustStepInterval
	| axis markerDistance |
	
	axis := SWAxis create.
	
	axis length: 100.
	axis adjustStepInterval.
	markerDistance := (axis stepInterval * axis length / axis valueRange).
	self assert: [markerDistance >= SWAxis minMarkerDistance]
		description: markerDistance printString, ' should be greater than ', SWAxis minMarkerDistance.
	
	axis length: 1000.
	axis adjustStepInterval.
	markerDistance := (axis stepInterval * axis length / axis valueRange).
	self assert: [markerDistance <= SWAxis maxMarkerDistance]
		description: markerDistance printString, ' should be less than ', SWAxis maxMarkerDistance.