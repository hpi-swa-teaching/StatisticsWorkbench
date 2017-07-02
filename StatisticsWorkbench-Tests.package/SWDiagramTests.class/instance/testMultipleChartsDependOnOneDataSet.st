testing
testMultipleChartsDependOnOneDataSet
	| diagram data |
	data := SWDiagramMock dataSet.
	diagram := SWDiagram new visualize: data with: SWFunctionGraph  and: SWScatterPlot.
	
	self assert: [ (diagram charts at: 1) dataset = (diagram charts at: 2) dataset].
	
	(diagram charts at: 1) dataset remove: 1.
	
	self assert: [ (diagram charts at: 1) dataset size = (diagram charts at: 2) dataset size ]