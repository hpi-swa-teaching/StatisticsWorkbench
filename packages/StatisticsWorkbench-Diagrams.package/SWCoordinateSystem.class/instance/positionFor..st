geometry
positionFor: aPoint
	
	| origin relativeOffset |
	
	origin := ((self startPoint x - self minimumOffsetX) @ (self startPoint y + self minimumOffsetY)).
	relativeOffset := ((self xAxis getPositionForValue: aPoint x) @ ((self yAxis getPositionForValue: aPoint y) negated)).
	
	^ origin + relativeOffset
