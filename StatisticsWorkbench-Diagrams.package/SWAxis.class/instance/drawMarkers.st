initialization
drawMarkers
	| index |
	
	index := 0.
	[index < self relativeStepInterval]
		whileTrue: [	self add: (self createMarkerAtIndex: index).
					index := index + 1]