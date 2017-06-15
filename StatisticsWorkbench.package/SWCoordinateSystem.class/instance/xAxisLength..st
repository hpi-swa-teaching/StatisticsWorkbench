as yet unclassified
xAxisLength: aLength
	self bounds: ((yAxis endPoint - (self boundsThreshold/2)) corner: ((aLength+yAxis startPoint x@yAxis startPoint y) + (self boundsThreshold/2)))