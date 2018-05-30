testing
testScatterPlotContainsTwoAxis
	
	self assert: self diagramScatterPlot hasCoordinateSystem.
	self deny: self diagramScatterPlot coordinateSystem xAxis == nil.
	self deny: self diagramScatterPlot coordinateSystem yAxis == nil