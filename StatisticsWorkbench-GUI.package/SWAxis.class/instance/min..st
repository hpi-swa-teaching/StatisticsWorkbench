accessing
min: anInteger

	anInteger isInteger
		ifFalse: [ SWInvalidArgumentError signal: 'You must provide a number' ].
	self max notNil
		ifTrue: [ anInteger >= self max
			ifTrue: [ SWInvalidArgumentError signal: 'The provided number must be smaller than max' ] ].
	min := anInteger.
	self update