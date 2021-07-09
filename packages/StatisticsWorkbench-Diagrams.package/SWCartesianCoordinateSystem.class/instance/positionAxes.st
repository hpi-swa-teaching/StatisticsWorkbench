geometry
positionAxes

	self xAxis startPoint: ((self startPoint x) @ (self startPoint y + self minimumOffsetY)).
	self xAxis endPoint: ((self bounds corner x - (self boundsThreshold x / 2)) @ (self xAxis startPoint y)).

	self yAxis startPoint: ((self startPoint x - self minimumOffsetX) @ (self startPoint y)).
	self yAxis endPoint: ((self yAxis startPoint x) @ (self bounds origin y + (self boundsThreshold y / 2)))