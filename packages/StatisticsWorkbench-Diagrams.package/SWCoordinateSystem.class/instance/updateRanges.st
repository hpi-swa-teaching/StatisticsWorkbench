updating
updateRanges
	
	| rangeX rangeY |
		
	rangeX := self rangeForDimension: #x.
	rangeY := self rangeForDimension: #y.
	
	self updateMaxX:  rangeX max maxY: rangeY max.
	self updateMinX: rangeX min minY: rangeY min
