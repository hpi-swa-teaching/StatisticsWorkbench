accessing
barWidth

	barWidth notNil
		ifTrue: [ ^ barWidth]
		ifFalse: [ ^ self coordinateSystem xAxis length / self data size / 2]