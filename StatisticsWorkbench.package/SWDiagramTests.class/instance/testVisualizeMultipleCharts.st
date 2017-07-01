testing
testVisualizeMultipleCharts
	| diagram data |
	
	data := SWDataSet new data: SWDiagram createTestDataPieAndBarChart.
	diagram := SWDiagram new visualize: data with: SWFunctionGraph and: SWScatterPlot.
	
	self assert: [ diagram charts size = 2 ]