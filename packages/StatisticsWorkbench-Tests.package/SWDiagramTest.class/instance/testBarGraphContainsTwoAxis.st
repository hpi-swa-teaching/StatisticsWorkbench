testing
testBarGraphContainsTwoAxis
	
	self assert: self diagramBarChart hasCoordinateSystem.
	self deny: self diagramBarChart coordinateSystem xAxis isNil.
	self deny: self diagramBarChart coordinateSystem yAxis isNil
