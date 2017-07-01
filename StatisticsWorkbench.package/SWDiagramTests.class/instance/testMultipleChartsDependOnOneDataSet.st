testing
testMultipleChartsDependOnOneDataSet
	| diagram data |
	data := SWDataSet new data: SWDiagram createTestDataPieAndBarChart.
	diagram := SWDiagram new visualize: data with: SWFunctionGraph  and: SWScatterPlot.
	
	 (diagram charts at: 1) dataset removeDataPoint: 1.
	
	self assert: [ (diagram charts at: 1) dataset size = (diagram charts at: 2) dataset size ]