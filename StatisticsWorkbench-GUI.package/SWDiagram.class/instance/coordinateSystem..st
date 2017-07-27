accessing
coordinateSystem: anObject

	coordinateSystem notNil
		ifTrue: [ coordinateSystem removeDependent: self ].
	coordinateSystem := anObject.
	anObject addDependent: self