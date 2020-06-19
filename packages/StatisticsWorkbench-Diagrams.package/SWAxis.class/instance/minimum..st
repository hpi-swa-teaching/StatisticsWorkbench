accessing
minimum: aValue

	(self maximum notNil and: aValue notNil)
		ifTrue: [(aValue >= self maximum)
					ifTrue: [SWInvalidArgumentError signal]
					ifFalse: [minimum := aValue.
								self update]]
		ifFalse: [minimum := aValue]
