tests
testScatterPlotVisualisation
	| scatterPlot diagram dataset |
	
	dataset := SWDataTests createSeeded.
	
	diagram := SWDiagram new
								visualize: dataset with: SWScatterPlot;
								yourself.
	
	scatterPlot := diagram charts at: 1.
	
	self assert: [ (scatterPlot dataPoints size) = dataset size ]