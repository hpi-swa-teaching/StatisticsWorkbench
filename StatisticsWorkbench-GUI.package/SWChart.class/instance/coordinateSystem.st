accessing
coordinateSystem 
	
	self class needsCoordinateSystem
		ifTrue: [ ^ self owner coordinateSystem ]
		ifFalse: [ Exception signal: 'This chart does not contain a coordiante system.' ]
	
	