accessing
maximum: aValue 

	(self minimum notNil and: aValue notNil)
		ifTrue: [(aValue <= self minimum) "Minimum range of 1 required for normedMarkerLength."
					ifTrue: [SWInvalidArgumentError signal]
					ifFalse: [maximum := aValue.
								self update]]
		ifFalse: [maximum := aValue]
