accessing
stepInterval: anObject
	anObject isNil
		ifTrue: [ SWInvalidArgumentError signal: 'Step interval must be set.'].
	(anObject <= 0)
		ifTrue: [ SWInvalidArgumentError signal: 'Step interval must be positive'].
	
	(anObject notNil)
		ifTrue: [ anObject <= 0
			ifTrue: [SWInvalidArgumentError signal]
			ifFalse: [stepInterval := anObject.
				self updateMarkers]]
		ifFalse: [stepInterval := anObject.]