geometry
calculateYCoordinateForPoint: aPoint

	^ aPoint y + self position y - self yAxis endPoint y - (self boundsThreshold y / 2)