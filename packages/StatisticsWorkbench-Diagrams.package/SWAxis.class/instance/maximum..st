accessing
maximum: aValue 

	(self minimum notNil and: aValue notNil)
		ifTrue: [(aValue <= self minimum)
					ifTrue: [SWInvalidArgumentError signal]
					ifFalse: [maximum := aValue.
								self update]]
		ifFalse: [maximum := aValue]
