accessing
yAxis: anObject

	yAxis notNil
		ifTrue: [ yAxis removeDependent: self ].
	yAxis := anObject.
	yAxis addDependent: self