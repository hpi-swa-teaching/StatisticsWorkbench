tests
testRemoveAll

	| scatterPlot|
	scatterPlot := SWScatterPlot new.
	scatterPlot dataset: SWData createSeeded.
	
	scatterPlot removeAll. 
	self assert: [ scatterPlot dataPoints size = 0 ]