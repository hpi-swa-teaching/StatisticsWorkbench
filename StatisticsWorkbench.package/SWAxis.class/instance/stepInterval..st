accessing
stepInterval: anObject

	(anObject notNil)
		ifTrue: [ anObject <= 0
			ifTrue: [SWInvalidArgumentError signal]
			ifFalse: [stepInterval := anObject.
				self updateMarkers]]
		ifFalse: [stepInterval := anObject.]