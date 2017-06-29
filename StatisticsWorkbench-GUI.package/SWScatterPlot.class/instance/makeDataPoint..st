as yet unclassified
makeDataPoint: aPoint
	
	self addDataPoint: 
			(SWDataPoint create: aPoint at: (self coordinateSystem positionFor: aPoint))
	