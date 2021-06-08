testing
testAdjustStepIntervalVertical

	| axis |
	
	axis := SWAxis create.

	axis endPoint: axis startPoint x @ (axis startPoint y + 100);
		orientation: #vertical.
	
	self assert: [axis markerDistance >= SWAxis minMarkerDistance]
		description: axis markerDistance printString, ' should be greater than ', SWAxis minMarkerDistance.
	
	axis endPoint: axis startPoint x @ (axis startPoint y + 1000).
	
	self assert: [axis markerDistance <= SWAxis maxMarkerDistance]
		description: axis markerDistance printString, ' should be less than ', SWAxis maxMarkerDistance.
