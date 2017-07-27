adding/removing
addAllMarkers
	| i |
	i := 0.
	[i - 1 < self relativeStepInterval]
		whileTrue: [	self add: (self createMarkerAtIndex: i).
					i := i + 1]