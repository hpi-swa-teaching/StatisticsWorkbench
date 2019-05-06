geometry
calculateXCoordinateForPoint: aPoint

	^ aPoint x + self position x - self yAxis startPoint x - (self boundsThreshold x / 2)