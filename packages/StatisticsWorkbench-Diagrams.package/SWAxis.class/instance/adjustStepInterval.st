adjusting
adjustStepInterval

	| newStepInterval |
	
	(self length > 0) 
		ifFalse: [^ self].
		
	newStepInterval := self stepInterval.
	
	(self markerDistance < SWAxis minMarkerDistance)
		ifTrue: [Transcript showln: '', self markerDistance, '=', self stepInterval, '*(', self length, '/', self valueRange, ') <', SWAxis minMarkerDistance.
			
				newStepInterval := (self valueRange * SWAxis minMarkerDistance / self length) ceiling.
				Transcript showln: 'newStepInterval=', newStepInterval, '=', self valueRange, '*', SWAxis minMarkerDistance, '/', self length.
				].
	
	(self markerDistance > SWAxis maxMarkerDistance)
		ifTrue: [
				Transcript showln: '', self markerDistance, '>', SWAxis maxMarkerDistance.
			
				newStepInterval := (self valueRange * SWAxis maxMarkerDistance / self length) ceiling.
				Transcript showln: 'newStepInterval=', newStepInterval, '=', self valueRange, '*', SWAxis maxMarkerDistance, '/', self length.].

	(self stepInterval ~= newStepInterval) 
		ifTrue: [
				Transcript showln: 'stepInterval: ', self stepInterval, ' => '.
				
				self stepInterval: newStepInterval.
				Transcript show: self stepInterval.
				Transcript showln: 'markerDistance=', self markerDistance, '=', self stepInterval, ' * (', self length, '/', self valueRange, ')'.
				Transcript showln: ''.
				self halt.
				]
