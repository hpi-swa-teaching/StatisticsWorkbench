accessing
minimum: aValue

	(self maximum notNil and: aValue notNil)
		ifTrue: [(aValue >= self maximum) "Minimum range of 1 required for normedMarkerLength."
					ifTrue: [SWInvalidArgumentError signal]
					ifFalse: [minimum := aValue.
								self update]]
		ifFalse: [minimum := aValue]
