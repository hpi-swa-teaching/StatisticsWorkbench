adjusting
adjustStepInterval
	| newStepInterval |
	newStepInterval := self stepInterval.
	
	(self length > 0) ifFalse: [^self].
	(self markerDistance < 15) ifTrue: [
		newStepInterval := (self valueRange * 15 / self length) ceiling
	].
	
	((self valueRange / self stepInterval) ceiling = SWAxis maxNumberOfMarkers) ifTrue: [^self].
	(self markerDistance > 30) ifTrue:[
		newStepInterval := 1.
	].

	(self valueRange / newStepInterval > SWAxis maxNumberOfMarkers) ifTrue: [
		newStepInterval := (self valueRange / SWAxis maxNumberOfMarkers) ceiling
	].

	self stepInterval ~= newStepInterval ifTrue:[
		self stepInterval: newStepInterval.
	]