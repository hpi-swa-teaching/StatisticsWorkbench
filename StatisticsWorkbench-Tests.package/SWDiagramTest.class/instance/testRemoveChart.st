testing
testRemoveChart
		
	diagramLineChart removeChart: (diagramLineChart charts at:1).
	(diagramBarChart charts at:1) removeFrom: diagramBarChart.
	
	self assert: (diagramLineChart charts isEmpty).
	self assert: (diagramBarChart charts isEmpty)