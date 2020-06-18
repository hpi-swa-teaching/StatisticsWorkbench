geometry
startpointOf: aPieSlice by: aPosition

	(aPosition = 1)
		ifTrue: [aPieSlice startPoint: self circleStartpoint]
		ifFalse: [aPieSlice startPoint: (self pieSlices at: aPosition - 1) endPoint]