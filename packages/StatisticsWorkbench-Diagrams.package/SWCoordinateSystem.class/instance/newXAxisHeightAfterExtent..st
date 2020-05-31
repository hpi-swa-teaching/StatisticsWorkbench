geometry
newXAxisHeightAfterExtent: aPoint
	
	| minimumOffset |
		
	minimumOffset :=  (self yAxis minimum * self yAxis normedMarkerLength) asFloat.
	
	^ (self yAxis endPoint x @ (aPoint y - self boundsThreshold y + self yAxis endPoint y + minimumOffset))