testing
testVisualizeMultipleCharts
	| diagram data |
	
	data := SWDiagramMock dataSet.
	diagram := SWDiagram new visualize: data with: SWFunctionGraph and: SWScatterPlot.
	
	self assert: [ diagram charts size = 2 ]