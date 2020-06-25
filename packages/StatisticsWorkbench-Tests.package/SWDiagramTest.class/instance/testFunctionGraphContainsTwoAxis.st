testing
testFunctionGraphContainsTwoAxis
	
	self assert: self diagramLineChart hasCoordinateSystem.
	self deny: self diagramLineChart coordinateSystem xAxis isNil.
	self deny: self diagramLineChart coordinateSystem yAxis isNil
