updating
updateRanges
	
	| maxX maxY minX minY rangeX rangeY |
		
	rangeX := self computeRangeForDimension: #x.
	minX := rangeX first.
	maxX := rangeX second.
	
	rangeY := self computeRangeForDimension: #y.
	minY := rangeY first.
	maxY := rangeY second.
		
	self updateMinX: minX minY: minY.
	self updateMaxX:  maxX maxY: maxY
