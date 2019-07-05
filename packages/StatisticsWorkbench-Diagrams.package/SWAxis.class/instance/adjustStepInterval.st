adjusting
adjustStepInterval
	| newStepInterval |
	newStepInterval := self stepInterval.
	
	self length > 0 ifFalse: [^self].
	(self valueRange / self stepInterval) ceiling = SWAxis maxNumberOfMarkers ifTrue: [^self].
	
	self markerDistance < SWAxis minMarkerDistance ifTrue: [
		newStepInterval := (self valueRange * SWAxis minMarkerDistance / self length) ceiling].
	
	self markerDistance > SWAxis maxMarkerDistance ifTrue:[
		newStepInterval := 1].

	(self valueRange / newStepInterval) > SWAxis maxNumberOfMarkers ifTrue: [
		newStepInterval := (self valueRange / SWAxis maxNumberOfMarkers) ceiling].

	self stepInterval ~= newStepInterval ifTrue:[
		self stepInterval: newStepInterval]