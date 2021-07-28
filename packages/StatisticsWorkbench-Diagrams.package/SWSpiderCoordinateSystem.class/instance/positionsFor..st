geometry
positionsFor: aVector

	^ (1 to: aVector size) collect: [:each | self circlePositionAtDimension: each forValue: (aVector at: each)]