as yet unclassified
xAxisLength: aLength
	self bounds: ((yAxis endPoint - (self boundsThreshold/2)) corner: (yAxis startPoint x + aLength@yAxis startPoint y + (self boundsThreshold/2)))