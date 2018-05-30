testing
testBarGraphContainsTwoAxis
	
	self assert: self diagramBarChart hasCoordinateSystem.
	self deny: self diagramBarChart coordinateSystem xAxis == nil.
	self deny: self diagramBarChart coordinateSystem yAxis == nil