geometry
extent: aPoint
	| xMinimumOffset yMinimumOffset |
	super extent: aPoint.
	
	(self xAxis isNil or: [self yAxis isNil])
			ifFalse: [
				xMinimumOffset := (self yAxis minimum * self yAxis normedMarkerLength) asFloat.
				yMinimumOffset := (self xAxis minimum * self xAxis normedMarkerLength) asFloat.
	
				self xAxis startPoint: (self startPoint x) @ (self startPoint y + xMinimumOffset).
				self xAxis endPoint: (self bounds corner x - (self boundsThreshold x / 2)) @ (self xAxis startPoint y).
				
				self yAxis startPoint: (self startPoint x - yMinimumOffset) @ (self startPoint y).
				self yAxis endPoint: (self yAxis startPoint x) @ (self bounds origin y + (self boundsThreshold y / 2)). 
	
				self updateRasterSize]