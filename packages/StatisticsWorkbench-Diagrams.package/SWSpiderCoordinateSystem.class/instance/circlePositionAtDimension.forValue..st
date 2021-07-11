as yet unclassified
circlePositionAtDimension: aNumber forValue: aValue
	
	| radius |
	
	radius := (self radius / 100) * aValue.
	^((aNumber-1 * self radiantsPerDimension + 270 degreesToRadians) cos * radius @ ((aNumber-1 *  self radiantsPerDimension+ 270 degreesToRadians) sin * radius ) + self center) asIntegerPoint
