testing
testScatterPlotContainsTwoAxis
	
	self assert: self diagramScatterPlot hasCoordinateSystem.
	self deny: self diagramScatterPlot coordinateSystem xAxis isNil.
	self deny: self diagramScatterPlot coordinateSystem yAxis isNil
