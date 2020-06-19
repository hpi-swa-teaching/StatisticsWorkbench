testing
testadjustStepInterval

	| axis markerDistance |
	
	axis := SWAxis create.
	
	axis endPoint: (axis startPoint x + 100) @ axis startPoint y.
	axis adjustStepInterval.
	markerDistance := (axis stepInterval * axis length / axis valueRange).
	self assert: [markerDistance >= SWAxis minMarkerDistance]
		description: markerDistance printString, ' should be greater than ', SWAxis minMarkerDistance.
	
	axis endPoint: (axis startPoint x + 1000) @ axis startPoint y.
	axis adjustStepInterval.
	markerDistance := (axis stepInterval * axis length / axis valueRange).
	self assert: [markerDistance <= SWAxis maxMarkerDistance]
		description: markerDistance printString, ' should be less than ', SWAxis maxMarkerDistance.
