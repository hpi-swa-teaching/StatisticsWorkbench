geometry
positionAxisX

	self xAxis startPoint: ((self startPoint x) @ (self startPoint y + self minimumOffsetY)).
	self xAxis endPoint: ((self bounds corner x - (self boundsThreshold x / 2)) @ (self xAxis startPoint y))
