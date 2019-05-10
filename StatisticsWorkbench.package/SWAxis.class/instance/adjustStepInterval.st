adjusting
adjustStepInterval
	(self valueRange / self stepInterval > SWAxis maxNumberOfMarkers)
		ifTrue: [self stepInterval: (self valueRange / SWAxis maxNumberOfMarkers) ceiling].