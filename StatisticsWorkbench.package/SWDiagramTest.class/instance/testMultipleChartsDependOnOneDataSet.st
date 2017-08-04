testing
testMultipleChartsDependOnOneDataSet
	
	self assert: (self diagramLineScatter charts at: 1) data = (self diagramLineScatter charts at: 2) data.
	(self diagramLineScatter charts at: 1) data remove: #(1 1).
	self assert: (self diagramLineScatter charts at: 1) data size = (self diagramLineScatter charts at: 2) data size