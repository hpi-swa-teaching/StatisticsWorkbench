accessing
minimum: anObject

	(self maximum notNil and: anObject notNil)
		ifTrue: [(anObject >= self maximum)
					ifTrue: [SWInvalidArgumentError signal]
					ifFalse: [minimum := anObject.
							 self update]]
		ifFalse: [minimum := anObject]