geometry
extent: aPoint

	super extent: aPoint.

	(self xAxis isNil or: [self yAxis isNil])
			ifFalse: [self update]
