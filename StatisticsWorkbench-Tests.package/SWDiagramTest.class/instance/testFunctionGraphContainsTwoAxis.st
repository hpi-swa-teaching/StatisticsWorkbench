testing
testFunctionGraphContainsTwoAxis
	
	self assert: self diagramLineChart hasCoordinateSystem.
	self deny: self diagramLineChart coordinateSystem xAxis == nil.
	self deny: self diagramLineChart coordinateSystem yAxis == nil