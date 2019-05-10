adjusting
adjustStepInterval
	"adjust maximum stepInterval"
	(self valueRange / self stepInterval > SWAxis maxNumberOfMarkers)
		ifTrue: [self stepInterval: (self valueRange / SWAxis maxNumberOfMarkers) ceiling].
	
	"adjust spacing"
	(self stepInterval > 1) ifTrue:[
		"increase stepInterval if space between markers < 15 pixel"
		(self length > 15) ifTrue:[
		((self stepInterval * self length / self valueRange) < 15) ifTrue: [
			self stepInterval: (self valueRange * 15 / self length) ceiling
			]
		].
	
	"decrease stepInterval if space between markers > 30 pixel"
		((self valueRange / self stepInterval) ceiling = SWAxis maxNumberOfMarkers) ifFalse:[
			((self stepInterval * self length / self valueRange) > 30) ifTrue:[self stepInterval: 2]
		].
	]