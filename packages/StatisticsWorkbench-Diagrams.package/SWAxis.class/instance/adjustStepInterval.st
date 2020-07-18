adjusting
adjustStepInterval

	| newStepInterval |
		
	self assert: self length > 0.
		
	newStepInterval := self stepInterval.
	
	(self markerDistance < SWAxis minMarkerDistance) 
		ifTrue: [newStepInterval := (self valueRange * self class minMarkerDistance / self length) ceiling].
	
	(self markerDistance > SWAxis maxMarkerDistance)
		ifTrue: [newStepInterval := (self valueRange * self class maxMarkerDistance / self length) ceiling].

	(self stepInterval ~= newStepInterval) 
		ifTrue: [self stepInterval: newStepInterval]
