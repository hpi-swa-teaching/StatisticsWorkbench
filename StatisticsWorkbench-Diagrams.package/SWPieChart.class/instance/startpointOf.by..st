geometry
startpointOf: aPieSlice by: aPosition

	aPosition = 1
		ifTrue: [ aPieSlice startpoint: self circleStartpoint ]
		ifFalse: [ aPieSlice startpoint: (self pieSlices at: aPosition - 1) endpoint ]