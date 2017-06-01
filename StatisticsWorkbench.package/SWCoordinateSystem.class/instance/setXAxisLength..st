as yet unclassified
setXAxisLength: aLength
	self xAxis endPoint: (self xAxis startPoint + (aLength@0)).
	self updateBounds