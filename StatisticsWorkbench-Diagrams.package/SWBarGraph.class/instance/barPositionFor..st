accessing
barPositionFor: x
	
	^ (self coordinateSystem positionFor: (x @ 0)) x + (self barWidth / 2)