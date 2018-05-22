accessing
coordinateSystem 
	
	self needsCoordinateSystem
		ifTrue: [ ^ self diagram coordinateSystem ]
		ifFalse: [ Exception signal: 'This chart does not contain a coordiante system.' ]
	
	