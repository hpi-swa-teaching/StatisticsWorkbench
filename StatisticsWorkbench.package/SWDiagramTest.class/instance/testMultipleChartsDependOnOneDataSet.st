testing
testMultipleChartsDependOnOneDataSet
	
	self assert: (self diagramLineScatter charts second) data equals: (self diagramLineScatter charts first) data.
	(self diagramLineScatter charts first) data removeArray: #(1 1).
	self assert: (self diagramLineScatter charts second) data size equals: (self diagramLineScatter charts first) data size