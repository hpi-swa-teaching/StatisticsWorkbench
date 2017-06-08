as yet unclassified
extent: aPoint
	super extent: aPoint.
	(self xAxis isNil or: [self yAxis isNil])
		ifFalse: [
			self xAxis startPoint: (self yAxis endPoint x@(aPoint y - 60 + self yAxis endPoint y)).
			self xAxis length: aPoint x + self position x - self yAxis startPoint x - 30.
			self yAxis length: (aPoint y + self position y - self yAxis endPoint y - 30).]