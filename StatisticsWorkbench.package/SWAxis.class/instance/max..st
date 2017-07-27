accessing
max: anInteger

	anInteger isInteger
		ifFalse: [ SWInvalidArgumentError signal: 'You must provide a number' ].
	self min notNil
		ifTrue: [ anInteger <= self min
			ifTrue: [ SWInvalidArgumentError signal: 'The provided number must be greater than min' ] ]. self flag: #tom.
	max := anInteger.
	self update