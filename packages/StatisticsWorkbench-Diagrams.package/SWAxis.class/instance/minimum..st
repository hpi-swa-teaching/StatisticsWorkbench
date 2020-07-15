accessing
minimum: aValue

	(aValue notNil)
		ifFalse: [(SWInvalidArgumentError new messageText: 'New minimum must not be nil.') signal].

	(self maximum notNil and: [aValue >= self maximum])
		ifTrue: [(SWInvalidArgumentError new messageText: 'Cannot set minimum: Must be at least 1 less than maximum (required for normedMarkerLength).') signal]
		ifFalse: [minimum := aValue.
				self update]
