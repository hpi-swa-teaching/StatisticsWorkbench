initialization
drawMarkers
	| i |
	
	i := 0.
	[i < self relativeStepInterval]
		whileTrue: [	self add: (self createMarkerAtIndex: i).
					i := i + 1]