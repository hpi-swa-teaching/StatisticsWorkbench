as yet unclassified
makeDataPoint: aPoint
	| newDataPoint |
	
	newDataPoint := SWDataPoint create: aPoint at: (self coordinateSystem positionFor: aPoint).
	
	self addDataPoint: newDataPoint
	