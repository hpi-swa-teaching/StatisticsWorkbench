testing
testMultipleChartsDependOnOneDataSet
	
	self assert: (self diagramLineScatter charts first) data = (self diagramLineScatter charts second) data.
	(self diagramLineScatter charts first) data removeArray: #(1 1).
	self assert: (self diagramLineScatter charts first) data size = (self diagramLineScatter charts second) data size