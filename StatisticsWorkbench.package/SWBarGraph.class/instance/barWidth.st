accessing
barWidth

	barwidth notNil
		ifTrue: [ ^ barwidth ]
		ifFalse: [ ^ self coordinateSystem xAxis length / self dataset size / 2 ]