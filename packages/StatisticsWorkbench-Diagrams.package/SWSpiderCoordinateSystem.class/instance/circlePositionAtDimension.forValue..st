as yet unclassified
circlePositionAtDimension: aNumber forValue: aValue
	
	| radius radiants |
	
	radius := (self radius / 100) * aValue.
	radiants := (self degreesFromDimension: aNumber) degreesToRadians.
	^ (radiants cos * radius @ (radiants sin * radius)) + self center asIntegerPoint
