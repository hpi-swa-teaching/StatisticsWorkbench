accessing
endPoint: aPoint
	
	self vertices at: 2 put: aPoint.
	self computeBounds;
		updateMarkers
