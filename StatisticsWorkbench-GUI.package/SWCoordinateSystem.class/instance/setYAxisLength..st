as yet unclassified
setYAxisLength: aLength
	self yAxis endPoint: (self yAxis startPoint + (0@aLength)).
	self updateBounds