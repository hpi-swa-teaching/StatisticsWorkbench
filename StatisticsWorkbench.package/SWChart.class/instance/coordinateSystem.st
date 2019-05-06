accessing
coordinateSystem 
	
	(self needsCoordinateSystem)
		ifTrue: [^ self owner coordinateSystem]
		ifFalse: [Exception signal: 'This chart does not contain a coordinate system.']