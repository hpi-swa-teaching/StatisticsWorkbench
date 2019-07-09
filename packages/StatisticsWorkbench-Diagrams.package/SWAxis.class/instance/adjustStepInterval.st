adjusting
adjustStepInterval
	| newStepInterval |
	newStepInterval := self stepInterval.
	self length > 0 ifFalse: [^self].
	
	self markerDistance < SWAxis minMarkerDistance ifTrue: [
		newStepInterval := (self valueRange * SWAxis minMarkerDistance / self length) ceiling].
	
	self markerDistance > SWAxis maxMarkerDistance ifTrue:[
		newStepInterval := (self valueRange * SWAxis maxMarkerDistance / self length) ceiling].

	self stepInterval ~= newStepInterval ifTrue:[
		self stepInterval: newStepInterval]