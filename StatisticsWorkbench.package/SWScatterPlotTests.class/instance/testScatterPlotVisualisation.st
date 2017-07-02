tests
testScatterPlotVisualisation
	| scatterPlot diagram dataset |
	
	dataset := SWDiagramMock dataSet.
	
	diagram := SWDiagram new
								visualize: dataset with: SWScatterPlot;
								yourself.
	
	scatterPlot := diagram charts at: 1.
	
	self assert: [ (scatterPlot dataPoints size) = dataset size ]