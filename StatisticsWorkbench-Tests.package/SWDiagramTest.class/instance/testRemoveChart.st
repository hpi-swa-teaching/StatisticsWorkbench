testing
testRemoveChart
		
	diagramLineChart removeChart: (diagramLineChart charts first).
	(diagramBarChart charts first) removeFrom: diagramBarChart.
	
	self assert: (diagramLineChart charts isEmpty).
	self assert: (diagramBarChart charts isEmpty)