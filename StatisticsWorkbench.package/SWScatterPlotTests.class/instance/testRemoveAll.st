tests
testRemoveAll

	| scatterPlot|
	scatterPlot := SWScatterPlot new.
	scatterPlot data: SWDataTests createSeeded.
	
	scatterPlot removeAll. 
	self assert: [ scatterPlot dataPoints size = 0 ]