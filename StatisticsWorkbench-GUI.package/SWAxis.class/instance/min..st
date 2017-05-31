accessing
min: anObject
	(self max notNil and: anObject notNil)
		ifTrue: [ anObject >= self max
			ifTrue: [SWInvalidArgumentError signal]
			ifFalse: [min := anObject.
				self updateMarkers]]
		ifFalse: [min := anObject.]