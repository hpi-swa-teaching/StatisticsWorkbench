initialization
initializeFromXValues: xCollection andYValues: yCollection
	
	| lowerX higherX |
	self slope: (self calculateSlopeFromXValues: xCollection andYValues: yCollection).
	self intersect: (self calculateIntersectFromXValues: xCollection andYValues: yCollection).

	lowerX := xCollection min.
	higherX := xCollection max.
	
	self plotrange: (lowerX to: higherX)
