testing
testAdjustStepIntervalHorizontal

	| axis |
	
	axis := SWAxis create.
	
	axis endPoint: (axis startPoint x + 100) @ axis startPoint y;
		orientation: #horizontal.
	
	self assert: [axis markerDistance >= (axis maxLabelSize * SWAxis minMarkerDistancePerLegendCharacter)]
		description: axis markerDistance printString, ' should be greater than ', (axis maxLabelSize * SWAxis minMarkerDistancePerLegendCharacter).
	
	axis endPoint: (axis startPoint x + 1000) @ axis startPoint y.
	
	self assert: [axis markerDistance <= (axis maxLabelSize * SWAxis maxMarkerDistancePerLegendCharacter)]
		description: axis markerDistance printString, ' should be less than ', (axis maxLabelSize * SWAxis maxMarkerDistancePerLegendCharacter)
