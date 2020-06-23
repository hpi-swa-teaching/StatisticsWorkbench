updating
updateCoordinateSystemRangeWithAxisNames: axisNames
	
	
	| maxX maxY minX minY rangeX rangeY |
	
	rangeX := self computeCoordinateSystemRangeForDimension: #x.
	minX := rangeX at: 1.
	maxX := rangeX at: 2.
	rangeY := self computeCoordinateSystemRangeForDimension: #y.
	minY := rangeY at: 1.
	maxY := rangeY at: 2.
	
	self coordinateSystem updateMinX: minX minY: minY axisNames: axisNames.
	self coordinateSystem updateMaxX:  maxX maxY: maxY axisNames: axisNames
