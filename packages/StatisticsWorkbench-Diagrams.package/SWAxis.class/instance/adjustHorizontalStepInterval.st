adjusting
adjustHorizontalStepInterval

	| newStepInterval maxLabelSize |
	
	newStepInterval := self stepInterval.
	maxLabelSize := self maxLabelSize.
	(self markerDistance < (maxLabelSize * self class defaultMinMarkerDistancePerSymbol))
		ifTrue: [newStepInterval := (self valueRange * maxLabelSize * self class defaultMinMarkerDistancePerSymbol / self length) ceiling].
	
	(self markerDistance > (maxLabelSize * self class defaultMaxMarkerDistancePerSymbol))
		ifTrue: [newStepInterval := (self valueRange * maxLabelSize * self class defaultMaxMarkerDistancePerSymbol / self length) ceiling].

	(self stepInterval ~= newStepInterval)
		ifTrue: [self stepInterval: newStepInterval]