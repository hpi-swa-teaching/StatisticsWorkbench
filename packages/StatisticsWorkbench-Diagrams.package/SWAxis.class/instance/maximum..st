accessing
maximum: anObject 

	(self minimum notNil and: anObject notNil)
		ifTrue: [(anObject <= self minimum)
					ifTrue: [SWInvalidArgumentError signal]
					ifFalse: [maximum := anObject.
								self update]]
		ifFalse: [maximum := anObject]