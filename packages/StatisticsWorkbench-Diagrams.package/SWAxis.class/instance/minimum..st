accessing
minimum: aValue

	(aValue)
		ifNil: [SWInvalidArgumentError signal: 'New minimum must not be nil.'].

	(self maximum notNil and: [aValue >= self maximum])
		ifTrue: [SWInvalidArgumentError signal: 'Minimum must be smaller than maximum.']
		ifFalse: [minimum := aValue.
				self update]
