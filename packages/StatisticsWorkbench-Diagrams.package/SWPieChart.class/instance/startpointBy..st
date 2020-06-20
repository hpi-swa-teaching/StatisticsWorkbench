geometry
startpointBy: aPosition

	(aPosition = 1)
		ifTrue: [^ self circleStartpoint]
		ifFalse: [^ (self pieSlices at: aPosition - 1) edgePoints last].
