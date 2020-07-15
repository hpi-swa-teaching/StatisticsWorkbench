accessing
maximum: aValue

	(aValue notNil)
		ifFalse: [(SWInvalidArgumentError new messageText: 'New maximum must not be nil.') signal].

	(self minimum notNil and: [aValue <= self minimum])
		ifTrue: [(SWInvalidArgumentError new messageText: 'Cannot set maximum Must be at least 1 less than maximum (required for normedMarkerLength).') signal]
		ifFalse: [maximum := aValue.
				self update]
