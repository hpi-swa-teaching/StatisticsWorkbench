tests
testRemoveAll

	| scatterPlot|
	scatterPlot := SWScatterPlot new.
	scatterPlot dataset: SWDiagramMock dataSet.
	
	scatterPlot removeAll. 
	self assert: [ scatterPlot dataPoints size = 0 ]