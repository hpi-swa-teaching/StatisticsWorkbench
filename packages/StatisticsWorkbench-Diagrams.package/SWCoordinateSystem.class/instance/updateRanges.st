updating
updateRanges
	
	| maxX maxY minX minY rangeX rangeY |
		
	"Transcript showln: 'ranges before: ', self xAxis minimum, ', ', self xAxis maximum, ' and ', self yAxis minimum, ', ', self yAxis maximum."
	
	rangeX := self computeRangeForDimension: #x.
	minX := rangeX at: 1.
	maxX := rangeX at: 2.
	rangeY := self computeRangeForDimension: #y.
	minY := rangeY at: 1.
	maxY := rangeY at: 2.
	
	"Transcript showln: 'ranges after ', minX, ', ', maxX, ' and ', minY, ', ', maxY.
	Transcript showln: ''."
		
	self updateMinX: minX minY: minY.
	self updateMaxX:  maxX maxY: maxY
