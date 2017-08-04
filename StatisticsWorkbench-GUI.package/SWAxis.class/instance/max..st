accessing
max: anObject 
	(self min notNil and: anObject notNil)
		ifTrue: [ anObject <= self min
			ifTrue: [SWInvalidArgumentError signal]
			ifFalse: [max := anObject.
				self update.
				self changed]]
		ifFalse: [ max := anObject]