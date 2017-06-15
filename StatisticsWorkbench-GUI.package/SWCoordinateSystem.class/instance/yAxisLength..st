as yet unclassified
yAxisLength: aLength
	self bounds: ((yAxis endPoint - (self boundsThreshold/2)) corner: ((xAxis endPoint x@(yAxis startPoint y+ aLength)) + (self boundsThreshold/2)))