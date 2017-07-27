accessing
xAxis: anObject

	xAxis notNil
		ifTrue: [ xAxis removeDependent: self ].
	xAxis := anObject.
	xAxis addDependent: self
