as yet unclassified
circlePositionAtDimension: aNumber forValue: aValue
	
	| radius xPosition yPosition degrees |
	
	radius := (self radius / 100) * aValue.
	degrees := aNumber - 1 * self radiantsPerDimension + self class axisOffsetToHorizontal degreesToRadians.
	xPosition := degrees cos * radius.
	yPosition := degrees sin * radius.
	^ (xPosition @ yPosition) + self center asIntegerPoint
