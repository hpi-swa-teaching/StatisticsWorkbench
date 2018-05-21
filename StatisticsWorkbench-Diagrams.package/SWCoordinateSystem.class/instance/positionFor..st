geometry
positionFor: aPoint
	
	^ self xAxis startPoint + ((self xAxis getPositionForValue: aPoint x) @ ((self yAxis getPositionForValue: aPoint y) negated))