as yet unclassified
add: aSWDate
	| newDataPoint |
	
	newDataPoint := (SWDataPoint create: aSWDate at: (self coordinateSystem positionFor: aSWDate key asPoint)).
	
	self dataPoints add: newDataPoint.
	self addMorph: newDataPoint