geometry
positionFor: aPoint
	
	| origin |
	
	origin := (self startPoint x - self minimumOffsetX) @ (self startPoint y + self minimumOffsetY).
	
	^ origin + ((self xAxis getPositionForValue: aPoint x) @ ((self yAxis getPositionForValue: aPoint y) negated))