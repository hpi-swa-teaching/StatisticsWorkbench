geometry
positionAxisY

	self yAxis startPoint: ((self startPoint x - self minimumOffsetX) @ (self startPoint y)).
	self yAxis endPoint: ((self yAxis startPoint x) @ (self bounds origin y + (self boundsThreshold y / 2)))