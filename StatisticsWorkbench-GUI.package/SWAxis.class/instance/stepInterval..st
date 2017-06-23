accessing
stepInterval: anObject
	anObject isNil
		ifTrue: [ SWInvalidArgumentError signal: 'Step interval must be set.'].
	anObject <= 0
		ifTrue: [ SWInvalidArgumentError signal: 'Step interval must be positive'].
	
	stepInterval := anObject.
	
	anObject notNil
		ifTrue: [ self updateMarkers ]