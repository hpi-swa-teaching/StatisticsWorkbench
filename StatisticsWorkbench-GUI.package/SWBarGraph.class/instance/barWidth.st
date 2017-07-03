accessing
barWidth

	barwidth notNil
		ifTrue: [ ^ barwidth ]
		ifFalse: [ ^ self coordinateSystem xAxis length / self data size / 2 ]