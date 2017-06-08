accessing
startPoint: aPoint
	
	self vertices at: 1 put: aPoint.
	self computeBounds;
		updateMarkers
