tests
testRemoveAll

	| scatterPlot|
	scatterPlot := SWScatterPlot new.
	scatterPlot data: SWData createSeeded.
	
	scatterPlot removeAll. 
	self assert: [ scatterPlot dataPoints size = 0 ]