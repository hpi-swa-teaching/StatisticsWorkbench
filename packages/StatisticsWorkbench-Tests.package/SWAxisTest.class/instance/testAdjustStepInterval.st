testing
testAdjustStepInterval

	| axis |
	
	axis := SWAxis create.
	
	axis endPoint: (axis startPoint x + 100) @ axis startPoint y.
	
	self assert: [axis markerDistance >= SWAxis minMarkerDistance]
		description: axis markerDistance printString, ' should be greater than ', SWAxis minMarkerDistance.
	
	axis endPoint: (axis startPoint x + 1000) @ axis startPoint y.
	
	self assert: [axis markerDistance <= SWAxis maxMarkerDistance]
		description: axis markerDistance printString, ' should be less than ', SWAxis maxMarkerDistance.
