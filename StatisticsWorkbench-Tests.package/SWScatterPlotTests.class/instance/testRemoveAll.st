tests
testRemoveAll
	
	self	scatterPlot removeAll. 
	self assert: scatterPlot dataPoints size = 0