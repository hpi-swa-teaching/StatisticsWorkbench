as yet unclassified
add: aPoint
	| newDataPoint |
	
	newDataPoint := (SWDataPoint create: aPoint at: (self coordinateSystem positionFor: aPoint)).
	
	self dataPoints add: newDataPoint.
	self addMorph: newDataPoint