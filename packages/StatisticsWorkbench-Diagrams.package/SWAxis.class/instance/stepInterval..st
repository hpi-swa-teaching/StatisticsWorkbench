accessing
stepInterval: aValue

	(aValue isNil)
		ifTrue: [SWInvalidArgumentError signal: 'Step interval must be set.'].
	(aValue <= 0)
		ifTrue: [SWInvalidArgumentError signal: 'Step interval must be positive.'].
	
	stepInterval := aValue.
	self update
