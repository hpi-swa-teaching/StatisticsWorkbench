testing
testRemoveChart
		
	self diagramLineChart removeChart: (self diagramLineChart charts first).
	(self diagramBarChart charts first) removeFrom: self diagramBarChart.
	
	self assert: (self diagramLineChart charts isEmpty).
	self assert: (self diagramBarChart charts isEmpty)