adjusting
adjustStepInterval

	| newStepInterval maxLabelSize |
	
	self assert: self length > 0.
	
	newStepInterval := self stepInterval.
	(self maximum abs > (self minimum abs)) 
		ifTrue: [maxLabelSize := (SWNumberShortener new shortenNumber: self maximum) size] 
		ifFalse: [maxLabelSize := (SWNumberShortener new shortenNumber: self maximum) size].
	
	(orientation = #horizontal) 
	ifTrue: [self adjustHorizontalStepInterval] 
	ifFalse: [(self markerDistance < self class minMarkerDistance)
				ifTrue: [newStepInterval := (self valueRange *  self class minMarkerDistance / self length) ceiling].
	
			(self markerDistance > self class maxMarkerDistance)
				ifTrue: [newStepInterval := (self valueRange * self class maxMarkerDistance / self length) ceiling].

			(self stepInterval ~= newStepInterval)
				ifTrue: [self stepInterval: newStepInterval]]