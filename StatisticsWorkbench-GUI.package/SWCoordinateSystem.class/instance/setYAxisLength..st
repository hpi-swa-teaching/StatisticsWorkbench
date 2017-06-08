as yet unclassified
setYAxisLength: aLength
	self yAxis length: aLength.
	self xAxis position: (self yAxis startPoint).
	self updateBounds