as yet unclassified
extent: aPoint
	super extent: aPoint.
	(self xAxis isNil or: [self yAxis isNil])
		ifFalse: [
			self xAxis startPoint: (self newXAxisHeightAfterExtent: aPoint).
			self xAxis length: (self newLengthAfterExtent: aPoint forAxis: #x).
			self yAxis length: (self newLengthAfterExtent: aPoint forAxis: #y).
			self updateRasterSize]